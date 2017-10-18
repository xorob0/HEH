// Prototypes
void LED1(char* led) ; // Allume la led correspondant à "led" et on modifie la valeur de "led" pour correspondre à la led suivante
void LED2() ; // Allume toutes les leds jusqu'à ce que le bouton soit relaché
void LED3() ; // Teste automatiquement toutes les leds, une par une
void NEXT(char* led) ; // On modifie la valeur de "led" pour correspondre à la led suivante

typedef enum {FALSE, TRUE} boolean;
typedef enum {UNDEFINED, SHORT, LONG, DOUBLE} press_type;

// Fonction principale
void main()
{

	// Initialisation des variables
	unsigned char led = 1, i = 0;
	boolean alreadyPressed = FALSE;
	press_type pressType = UNDEFINED;

	TRISA = 0b00000011 ;  // port A en sortie sauf  RA0 et RA1
	PORTA = 0 ;            // mettre les sorties à zéro
	TRISB = 0b00000000;      // Port B en sortie
	PORTB = 0 ;            // mettre les sorties à zéro
	pcon.OSCF = 1;         // configure le bit 3 du registre pcon  pour 4 mhz


	while(1) // Boucle infinie
	{
		if (RA0_bit == 0) // Si le bouton est enfoncé
		{
		    while (pressType == UNDEFINED) // Lancer la recherche de type d'appuis jusqu'à ce qu'un type soit trouvé
		    {
		        if(RA0_bit == 0) // Si le bouton est enfoncé
		        {
		            if (alreadyPressed == 1) // Si le bouton à déjà été enfoncé
		                pressType = DOUBLE; // Il sagit d'un appui double

		            else if(i>99) // Si il ne sagit pas d'un appui double et que l'appui dure depuis au moins 1s
		                pressType = LONG; // Il sagit d'un appui long
		        }
		            else // Si le bouton est relaché
		            {
		                alreadyPressed = TRUE; // On retient qu'il a déjà été laché et on continue la boucle tant que pressType n'a pas de valeur

		                if (i > 49) // Si le bouton  à été appuyé il y a au moins 500ms
		                    pressType = SHORT; // Il sagit d'un appuis court
		            }

		            i++; // Incrémentation du compteur
		            delay_ms(10); // Scan toutes les 10ms, valeur à adapter en fonction de la réactivité souhaitée
		        }
		    i = alreadyPressed = 0; // On remet les compteurs et les variables temporaires à zéro
		}

		switch (pressType) // On associe un type d'appui à une action
		{
	    	case SHORT: // En cas d'appui court
	        	LED1(&led);
		        break;
	    	case LONG: // En cas d'appuis long
	        	LED2();
	        	break;
	   		case DOUBLE: // En cas d'appuis double
	        	LED3();
	        	break;
		}
		pressType = UNDEFINED; // On remet la valeur de pressType à zéro
	}
}

//*********************************************
//sous-programme

void LED1(char* led){
	PORTB = *led; // On allume la led correspondant à "led"
	NEXT(led); // On modifie "led" pour corresponde à la led suivante
}

void LED2(){
    while(RA0_bit == 0) // Tant que le bouton est enfoncé
    {
        PORTB = 255; // On allume toutes les leds
    }
    PORTB = 0; // Ensuite on eteint toutes les leds
}

void LED3(){
	unsigned char i, port = 1; // Initialisation des variables
	for(i = 0 ; !RA0_bit || i < 16; i++) // Boucle de 2 tours qui peut être intérompue par un appui  sur le bouton
	{
	    PORTB = port; // On allume les leds corespondant à "port"
	    delay_ms(250); // On attend 250ms avec la led allumée
	    NEXT(&port); // On associe à "port" la valeur correspondant à la led suivante
	}
	PORTB = 0; // On éteint toutes les leds
}

void NEXT(char* led)
{
	*led = (*led << 1)%255; // On prend led double de led et ensuite son modulo par 255 pour qu'il ne contienne que le bit suivant
}
