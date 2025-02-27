#!/bin/bash

# Definir las fechas en las que queremos hacer commits
FECHAS=("2025-02-27" "2025-02-28" "2025-03-03" "2025-03-04" "2025-03-06" "2025-03-07" \
        "2025-03-10" "2025-03-11" "2025-03-12" "2025-03-13" "2025-03-14" "2025-03-19")

# Iterar sobre cada fecha y hacer varios commits para mayor intensidad
for FECHA in "${FECHAS[@]}"; do
    for i in {1..3}; do  # Cambia 3 a un número mayor si quieres más commits por día
        echo "Commit automático en $FECHA - Iteración $i" >> commits.txt
        GIT_COMMITTER_DATE="$FECHA 12:00:00" git commit --date="$FECHA 12:00:00" -m "Commit automático en $FECHA - Iteración $i"
    done
done

# Subir los cambios a GitHub
git push origin main

