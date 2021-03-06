# TP-sur-Scripts-shell---Programmez-sous-Unix-Linux

Scripts tirés du livre :

__Scripts shell__
Programmez sous Unix/Linux (sh, ksh, bash) - Exercices et corrigés (2e édition)

Edition ENI

*Auteur(s)*
__Jean-Marc BARANGER - Théo SCHOMAKER__

---
1. [__AffichageVarEnv__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/AfficheVarEnv.sh)
> Affiche le contenu des variables d'environnement : HOME, PATH, USER et PWD 

2. [__VarLocGlob1__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/VarLocGlob1.sh)
> Utilisation des quotes inverses \`commande\` ou $(commande)

3. [__AfficheRep__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/AfficheRep.sh)
> Paramètres $0 $1 et \n permet d'insérer un passage à la ligne

4. [__ChercheUser__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/ChercheUser.sh)
> Recherche utilisateur en paramètre $1 avec la commande Grep et ^ pour début de ligne sur le fichier /etc/passwd

5. [__vi2__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/vi2.sh)
> Générer un fichier qui porte un nom différent avec la variable $$ portant le numéro du processus

6. [__InfoSys__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/InfoSys.sh)
> Mise en oeuvre de la commande __set__ et des paramètres de position

7. [__InfoDate__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/InfoDate.sh)
> Information sur la date et l'heure.<br/>
> Mise en oeuvre de :
> - la commande set
> - variables de position
> - variable IFS

8. [__calcul__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/calcul.sh)
> Opérateurs arithmétiques.<br/>
> Mise en oeuvre de :
> - calcul avec la commande __expr__ peut être remplacée par (( expression arithmétique ))
> - caractère d'échapement pour la multiplication \* 
> - Mise en place de la structure case

9. [__VerifAddrIP__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/VerifAddrIP.sh)
> Vérification de la validité d'une adresse IP par les 4 octects qui la constituent. La valeur décimal d'un octect est comprise entre 1 et 255.
> Mise en oeuvre de :
> - Utilisation du test [ $1 -le 0 -o $1 -ge 255 ]
> - Créer et vérifier si le fichier de sortie existe, le créer si besoin.
> - Vérifier la redondance de l'IP dans le fichier avec la commande __grep__ .
> - Ecrire l'IP dans un fichier de sortie. 

10. [__NumMois__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/NumMois.sh)
> Saisie non sécurisé du numéro du mois.
> Mise en oeuvre de la structure __case__ .

11. [__JourDate__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/JourDate.sh)
> Saisir langue pour avoir la transposition de la date.
> Mise en oeuvre de la structure __case__ avec stockage de multiples variables dans les choix.
> Mise en oeuvre des conditions dans if && .

12. [__Calcul7__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/Calcul7.sh)
> Mise en oeuvre de :
> - la commande shift.
> - la structure de boucle : while. 

13. [__Calcul8__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/Calcul8.sh)
> Saisie sécurisée de l'opération.

14. [__MinMax__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/MinMax.sh)
> Saisie d'une série de 10 nombres positifs.
> Mise en oeuvre de :
> - Boucle while.
> - Concatenation de variables
> - Decoupage avec __set__

15. [__TableMultiplication__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/TableMultiplication.sh)
> Saisie d'un nombre pour avoir la table de multiplication de celui ci.

16. [__NbFicRep__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/NbFicRep.sh)
> Compte le nombre de fichiers dans les répertoires donnés en argument.<br/>
> Mise en oeuvre de la commande FOR

16. [__NumMois1__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/NumMois1.sh)
> Saisie sécurisée du numéro du mois.<br/>
> L'utilisateur répète le traitement tant qu'il répond oui.

17. [__AnalyseRep__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/AnalyseRep.sh)
> Exécuter en root, analyse du répertoire /dev.<br/>
> Compte le nombre de répertoires, des liens symboliques, fichiers spéciaux et fichiers ordinaires.<br/>
> Il n'y a pas d'option de test des liens symboliques la commande grep sera utilisé.<br/>

18. [__Permissions__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/Permissions.sh)
> Saisie d'un répertoire pour avoir la liste des permissions suivant les fichiers.<br/>

18. [__AlerteUser__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/AlerteUser.sh)
> Mise en oeuvre de la commande break qui permet de sortir d'une boucle prématurément.<br/>

19. [__ValiderAdRx__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/ValiderAdRx.sh)
> Supprimer les adresses IP incorrectes dans le fichier dont le nom est transmis en paramètres.<br/>

20. [__debug__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/debug.sh)
> Première possibilité de debug et de mettre dans le shebang -x pour tracer toutes les instructions.<br/>
> Deuxième possibilité, présente l'avantage d'activer le debug à certains endroits du programme en mettant set -x et set +x entre les instructions à tracer. En Ksh/Bash on peut mettre set -o xtrace et set +o xtrace.<br/>
> Troisième possibilité, au lancement du script ajouter le paramètre -x <br/>
> sh -x debug.sh

20. [__KillProcessus__](https://github.com/digithanh/TP-sur-Scripts-shell---Programmez-sous-Unix-Linux/blob/main/KillProcessus.sh)
> Tuer les processus dont le nom a été fourni en paramètre du script.<br/>
