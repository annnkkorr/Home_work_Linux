#!/bin/bash
#Создаем дом
mkdir house
cd house
#Строим первый этаж
mkdir floor_1
cd floor_1
mkdir living_room
cd living_room
mkdir closet
cd ~
cd house/floor_1
mkdir kitchen 
cd kitchen
mkdir fridge
cd ~
cd house
#Строим второй этаж
mkdir floor_2
cd floor_2
mkdir mom
mkdir dad
mkdir daughter
mkdir son
mkdir grandma
cd ..
#Даем права доступа членам семьи
chmod 700 floor_2/son
chmod 700 floor_2/daugther
chmod 700 floor_2/grandma
chmod 770 floor_2/mom
chmod 770 floor_2/dad
cd ~
ls -R house
 
