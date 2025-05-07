#!/bin/bash

# Definir las fechas en las que queremos hacer commits
FECHAS=("2025-04-15" "2025-04-16" "2025-04-17" "2025-04-18" "2025-04-29" "2025-04-30" "2025-05-01" \
        "2025-05-06")

# Iterar sobre cada fecha y hacer varios commits para mayor intensidad
for FECHA in "${FECHAS[@]}"; do
    for i in {1..3}; do  # Cambia 3 a un número mayor si quieres más commits por día
        echo "Commit automático en $FECHA - Iteración $i" >> commits.txt
        GIT_COMMITTER_DATE="$FECHA 12:00:00" git commit --date="$FECHA 12:00:00" -m "Commit automático en $FECHA - Iteración $i"
    done
done

# Subir los cambios a GitHub
git push origin main

