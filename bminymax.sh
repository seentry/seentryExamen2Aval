#!/bin/bash

    minConsumo=9999999999
    maxConsumo=0

    while read -r linea; do
        ciudad=$(echo "$linea" | awk '{print $1}')
        mes=$(echo "$linea" | awk '{print $2}')
        ano=$(echo "$linea" | awk '{print $3}')
        consumo=$(echo "$linea" | awk '{print $4}')

        if [ $consumo -lt $minConsumo ]; then
            minConsumo=$consumo
            minCiudad=$ciudad
            minMes=$mes
            minAno=$ano
        fi

        if [ $consumo -gt $maxConsumo ]; then
            maxConsumo=$consumo
            maxCiudad=$ciudad
            maxMes=$mes
            maxAno=$ano
        fi
    done < consumos.txt

    echo "Minimo $minConsumo $minCiudad $minMes $minAno"
    echo "Maximo $maxConsumo $maxCiudad $maxMes $maxAno"
