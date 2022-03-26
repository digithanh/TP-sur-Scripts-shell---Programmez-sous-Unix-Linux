#!/bin/ksh

# Pour tracer toutes les instructions on utilise
# #!/bin/sh -x

# Activer le debug bach/ksh
set -o xtrace

# En standard on utilise 
# set -x

ls 
pwd
find . -name fichier

# Désactiver le debug
set +o xtrace

# En standard on utilise 
# set +x
