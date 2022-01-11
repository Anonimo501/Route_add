#!/bin/bash

echo ""
echo -e "\e[31m	ROUTE ADD \e[0m"
echo ""

echo ""
echo -e "\e[31m	Ingrese la Red a Añadir \e[0m - Ejemplo \e[33m 172.16.64.0/24 \e[0m"
echo ""
read red

echo ""
echo -e "\e[31m	Ingrese la ip de su Gateway \e[0m - Ejemplo: \e[33m 172.16.64.10 -o- 172.16.64.1 \e[0m"
echo ""
read gateway

echo ""
echo -e "\e[31m	Ingrese su interface de Red \e[0m - Ejemplo: \e[33m tap0 -o- eth1 \e[0m"
echo ""
read interface

echo ""
route add -net $red gw $gateway dev $interface

echo ""
route
