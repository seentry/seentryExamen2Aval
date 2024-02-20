#!/bin/bash

total=0
cont=0

echo "Elige ciudad:"
read ciudad

while read -r linea; do
    sitio=$(echo "$linea" | awk '{print $1}')
    consumo=$(echo "$linea" | awk '{print $4}')         
    
    if [ $ciudad = $sitio ]; then
        total=$((total+consumo))
        cont=$((cont+1))
    fi
done < consumos.txt   

if [ $cont -gt 0 ]; then
    media=$((total/cont))
    if [ $media -lt 400 ]
    echo "Es ECO"
fi