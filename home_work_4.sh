#1 написать регулярку, которая в файле сможет найти почту с русским доменом
awk '/\<[a-zA-Z0-9._]+@[a-zA-Z0-9.-]+\.(ru|рф|рус)\>/'  file.txt

#2 вытащить все IP адреса пользователей
awk '/([0-9]{1,3}\.){3}[0-9]{1,3}/' file.txt

#3 в некой директории научится находить файлы, в названии которых есть
   # -- genome
   # -- GCA

find /путь/к/директории -type f | awk '/genome/ && /GCA/'

#4 в GFF файле найти гены, которые лежат на - цепи, называются больше чем 3 буквы, и их название не начинается с букв A, Z, H
awk '$7 == "-" && $3 == "gene" && length($9) > 3 && !($9 ~ /^A|^Z|^H/){print}' gencode.v41.basic.annotation.gff3 > gene.txt
