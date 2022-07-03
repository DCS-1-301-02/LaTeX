set datafile separator comma
set grid
set xlabel "調査年度"
set ylabel "世帯保有率(%)"
set yrange [0:100]
set xtics 1
set key right bottom
set terminal png font "VL PGothic,12"
set output "possession.png"

plot 'gt050103.csv' u 1:7 w lp lw 2t "スマートフォン",\
'gt050103.csv' u 1:10 w lp lw 2 t "パソコン",\
'gt050103.csv' u 1:8 w lp lw 2 t "タブレット型端末",\
'gt050103.csv' u 1:3 w lp lw 2 t "モバイル端末全体",\
'gt050103.csv' u 1:2 w lp lw 2 t "固定電話"

