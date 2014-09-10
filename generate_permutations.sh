#!/bin/bash

clear

#Study=Cambridge
#Filename=Cambridge_Buckner

Study=Beijing
Filename=Beijing_Zang

# Loop over many random group comparisons
for Comparison in {1..1000}
do
	echo "Making random permutation $Comparison !"

	# Make a random permutation of all subjects
	shuf /home/andek/Data/fcon1000/${Study}/${Filename}_subjects.txt > /home/andek/Research_projects/RandomGroupAnalyses/${Study}_permutations/permutation${Comparison}.txt

done
















