#Задание 1

#!/bin/bash

if [[ $1 == "-u" ]]; then
  echo "${2^^}"
elif [[ $1 == "-l" ]]; then
   echo "${2,,}"
else
   echo "Usage: $0 -u|-l <word>"
   exit 1
fi

#Задание 2

#!/bin/bash

#Проверяем количество аргументов
if [ $# -ne 3 ]; then
    echo "Usege: $0 <file_path> <current_extension> <desired_extension>"
    exit 1

#Создаем переменные для аргументов
file_path = "$1"
current_extension = "$2"
desired_extension = "$3"

fi
#Поддерживаемые расширения
supported_extensions = ("txt" "pdf" "doc")

#Проверяем, поддерживаются ли текущее и желаемое расширение файла
if [[ ! " ${supported_formats[@]} " =~ " ${current_extension} " ]] || [[ ! " ${supported_formats[@]} " =~ " ${desired_extension} " ]]; then
    echo "Error: Поддерживаются только форматы: ${supported_formats[*]}"
    exit 1
fi

# Меняем расширение файла
mv "$file_path" "${file_path%.*}.$desired_extension"
echo "Расширение файла изменено с .$current_extension на .$desired_extension"


#Задание 3

#!/bin/bash

# Проверяем количество аргументов
if [ $# -ne 3 ]; then
    echo "Error: должно быть 3 аргумента"
else
    echo "Начало обработки данных с указанными аргументами"
fi

