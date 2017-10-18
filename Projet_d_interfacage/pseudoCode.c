
int pressType = 0; // pressType == 0, indéterminé;; pressType == 1, appuis cours;; pressType == 2, appuis long;; pressType == 3, double appuis

if (bouton == 1) // bouton == 1, bouton pressé;; bouton ==0, bouton relaché
{
	while (pressType == 0)
	{
		// i++; // En placant i ici, le programme comptera 1s après le début de l'appuis pour voir si il sagit d'un appuis simple ou double

		if(bouton == 1)
		{
			j++;

			if (alreadyPressed == 1)
			{
				pressType = 3; // Si le bouton à déjà été pressé alors il sagit d'un double-clic
			}

			else if(j>29)
			{
				pressType = 2; // Si le bouton est maintenu depuis au moins 3s alors il sagit d'un clic long
			}
		}

		if(bouton == 0)
		{
		alreadyPressed = 1; // Si le bouton est relaché on retient qu'il a déjà été laché et on continue la boucle tant que pressType n'a pas de valeur
		i++; // En placant i ici, le progamme attendra 1s après que le bouton soit relaché pour voir s'il sagit d'un appuis simple ou double
		}

		if alreadyPressed == 1 && i > 9)
		{
			pressType = 1; // Si le bouton à été enfoncé depuis relaché pendant au moins 1 seconde alors il sagit d'un appuis court
		}

		delay(100); // Scan toutes les 0.1s, valeur à adapter en fonction de la réactivité souhaitée
	}
}
