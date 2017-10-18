# Manipulation n°1
Dans cette manipulation nous avons pu observer que même si la source du signal d'entrée n'est pas un dipswitch la réaliation du schema se passe exactement de la même façon. En effet si la source est une horlage donnant un chiffre en binaire allant de 0 à 15 ou si il sagit de capteurs il faut toujours dessiner son schema en porte NAND2. Bien sur c'est la même chose pour les sortie qui ne sont pas obligé d'être des leds mais peuvent être des feu, une sonnierie d'alerte,... Enfin nous avons appris à gérer un circuit à plusieurs sortie ue n'est simplement ue plusieurs circuits avec les mêmes entrées.

# Manipulation n°2
Dans cette manipulations nous avons appris à utiliser d'autres circuits intégré comme le7432, le 7408 ou encore le 7486 pour gérer d'autres portes que les portes NAND2. Celà permet de simplifer grandement un montage car certaines portes comme la XNOR peuvent demander jusqu'à 5 portes NAND2, et donc l'utilisation de plus d'un CI. Avec ces nouveaux CI nous pourrons simplifer nos montages et nos schema.

# Manipulaton n°3
Dans cette manipulation nous avons cablé un demi-soustracteurs ainsi qu'un soustracteur complet qui n'est rien d'autre que deux semi-soustracteurs. Nous les avons construit grâce aux CI 7432, 7408 et 7486 que nous avons découverts dans la manipulation précédente. Alors que le demis-soustracteur ne prend pas en compte l'entrée Borrow, le full-sustracteur le prend en compte grâce au deuxième semi-soustracteur.

# Manipulation n°4
Dans cette manipulation nous avons découvert le CI 7483 qui est capable d'additionner deux quartets en prennant en compte le carry entrant et bien sur le carry sortant. Nous avont branché le quartet de sortie sur les leds mais aussi sur l'afficheur septs segment pour plus de facilité. Ensuite nous avons procédé au soustracteur par complément à un. Il a suffit de placer des portes NOT à l'entrée de chaque quartet sur le CI, nous avons aussi branché le carry entrant au 0. Ainsi nous trouvions l'inverse de nombre B par la méthode du complément à un avant de l'additionner avec le nombre A (A + (-B)). Finalement pour le soustracteur par complément à deux il a fallu rajouter un deuxième additionneur. Après avoir inversé bit à bit le nombre B, on lui aditionne 0b0001 avant de l'additionner au nombre deux.

# Manipulation n°5
Dans cette manipulation nous avons déouvert le CI 7485 qui est capable de comparer deux quartets et de mettre à vrai une des trois sortie en fonction de quel quartet est plus grand ou si ils sont égaux. Ce CI possède aussi des entrées qui permettent d'outrepasser la comparaison, en effet lorsque l'on compare un octet, nous avons besoinde deux CI 7485, si après la comparaison de la partie de gauche de nos octets une réponse autre que A=B à été trouvée, alors il n'est pas nécéssaire de comparer la partie de droite. Pour la comparaison d'octets nous avont branché ensemble les entrées par quartet pour simplifer notre travail.

