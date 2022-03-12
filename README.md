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
