#!/bin/bash -x

read -p "Random number =" $((RANDOM%6+1))
declare -A dectionary

num1=0
num2=0
num3=0
num4=0
num5=0
num6=0
i=1
j=10

while ((num1<$j && num2<$j && num3<$j && num4<$j && num5<$j && num6<$j))
do
          randomCheck=$((RANDOM%6+1))
          dictionary[$i]=$randomCheck
          ((i++))
          case $randomCheck in                               1)
                                            ((num1++))
                                         ;;
                                         2)
                                            ((num2++))
                                         ;;
                                         3)
                                            ((num3++))
                                         ;;
                                         4)
                                            ((num4++))
                                         ;;
                                         5)
                                            ((num5++))
                                         ;;
                                         6)
                                            ((num6++))
                                         ;;
                                         *)
                                            echo "repeat again"
                                         ;;

           esac
done
           echo "all random number =" ${dictionary[@]}
           echo "all total number of dice=${dictionary[@]} times"
