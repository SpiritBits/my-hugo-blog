#!/bin/bash


bgcols=("#0e1923" "#1a170f" "#0A0B0E")
fgcols=("#d6e8ee" "#eceae5" "#a4bfc6")
accols=("#5accf0" "#eec35e" "#4F5666")

function rotCol(){
  echo "$1" | pastel rotate "$2" | pastel format hex
}

function afunc(){
  amounts=(20 40 60 80 120 140 160 180 200 220 240 260 280 300 320 340)
  for c in ${amounts[@]}; do
    rotcol=$(rotCol "$1" "$c")
    echo "$rotcol" | pastel format hex
  done
}

sections=("about" "posts" "blackboard" "crafts" "howtos" "scifi")
amounts=(40 80 120 160 200 240)

function makeJson(){

  echo "{"
  for index in ${!sections[@]}; do
    bgrot=$(rotCol ${bgcols[0]} "${amounts[index]}")
    fgrot=$(rotCol ${fgcols[0]} "${amounts[index]}")
    acrot=$(rotCol ${accols[0]} "${amounts[index]}")

    echo "\"${sections[index]}\": {"
      echo "\"bg\": \"${bgrot}\"",
      echo "\"fg\": \"${fgrot}\"",
      echo "\"ac\": \"${acrot}\""

# [ $(echo -e "No\nYes" | dmenu -i -p "$1") == "Yes" ] && $2 
len="${#sections[@]}"
if [ "$index" == $(( "$len" - 1)) ]; then
      echo "}" 
    else
      echo "},"
    fi
  done
  echo "}"
}

makeJson

# afunc "${accols[0]}"
# afunc "${accols[1]}"

# echo "${bgcols[0]}" | pastel format hex

# echo "${bgcols[0]}" | pastel to-gray | pastel format hex
# echo "${bgcols[1]}" | pastel to-gray | pastel format hex
# echo "${bgcols[2]}" | pastel to-gray | pastel format hex

# echo "calculated Colors"

# echo "rotated by 40"
# echo "${bgcols[0]}" | pastel rotate 40 | pastel format hex
# echo "${fgcols[0]}" | pastel rotate 40 | pastel format hex
# echo "${accols[0]}" | pastel rotate 40 | pastel format hex
# echo "rotated by 60"
# echo "${bgcols[0]}" | pastel rotate 60 | pastel format hex
# echo "${fgcols[0]}" | pastel rotate 60 | pastel format hex
# echo "${accols[0]}" | pastel rotate 60 | pastel format hex
# echo "rotated by 80"
# echo "${bgcols[0]}" | pastel rotate 80 | pastel format hex
# echo "${fgcols[0]}" | pastel rotate 80 | pastel format hex
# echo "${accols[0]}" | pastel rotate 80 | pastel format hex
# echo "rotated by 120"
# echo "${bgcols[0]}" | pastel rotate 120 | pastel format hex
# echo "${fgcols[0]}" | pastel rotate 120 | pastel format hex
# echo "${accols[0]}" | pastel rotate 120 | pastel format hex


# echo "${accols[0]}" | pastel rotate 140 | pastel format hex
# echo "${accols[0]}" | pastel rotate 160 | pastel format hex
# echo "${accols[0]}" | pastel rotate 180 | pastel format hex
# echo "${accols[0]}" | pastel rotate 200 | pastel format hex
# echo "${accols[0]}" | pastel rotate 220 | pastel format hex
# echo "${accols[0]}" | pastel rotate 240 | pastel format hex
# echo "${accols[0]}" | pastel rotate 260 | pastel format hex
