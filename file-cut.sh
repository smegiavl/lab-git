#!/bin/bash


#Contamos lineas del fichero
lineas=$(wc -l < "$fichero")

#Calculamos 1/16
cortar=$((lineas / 16))

#Crear version recortada
#head -n nºlineas  fichero
head -n "$cortar" "$fichero" > "${fichero}.cut"

#Sobreescribimos
mv "$fichero.cut" "$fichero"
