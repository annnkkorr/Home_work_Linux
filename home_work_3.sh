#!/bin/bash

# Создание директории
mkdir -p terminal_task/results

# Преобразование файла .gff 
awk '($3 == "gene") && ($9 ~ /gene_type=unprocessed_pseudogene/) {
    split($9, a, "="); 
    gene_name = a[2]; 
    print $1, $4, $5, $7, gene_name
}' OFS='\t' gencode.v41.basic.annotation.gff3 > terminal_task/results/annotations.tsv

# Модификация координат
awk '{
    if ($4 ~ /^[0-9]+$/) {
        start = $2;
        end = $3;

        if ($4 == "+") {
            end = start + 1;
        } else if ($4 == "-") {
            start = end;
            end += 1;
        }

        print $1, start, end, $4, $5;
    }
}' OFS='\t' terminal_task/results/annotations.tsv > terminal_task/results/result.tsv

