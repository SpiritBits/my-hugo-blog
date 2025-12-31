#!/bin/bash

bgcols=("#0e1923" "#1a170f" "#0A0B0E")
fgcols=("#d6e8ee" "#eceae5" "#a4bfc6")
accols=("#5accf0" "#eec35e" "#4F5666")


# echo "${bgcols[0]}" | pastel format hex

echo "${bgcols[0]}" | pastel to-gray | pastel format hex
echo "${bgcols[1]}" | pastel to-gray | pastel format hex
echo "${bgcols[2]}" | pastel to-gray | pastel format hex
