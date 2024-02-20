#!/bin/bash

total=0

echo "Elige ciudad:"
read ciudad

while read -r linea; do
    sitio=$(echo "$linea" | awk '{print $1}')
    consumo=$(echo "$linea" | awk '{print $4}')         
    
    if [ $ciudad = $sitio ]; then
        total=$((total+consumo))
    fi
done < consumos.txt   

echo "El consumo de $ciudad es: $total."
