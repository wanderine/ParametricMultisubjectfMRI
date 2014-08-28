#!/bin/bash

clear

# Loop over many random group comparisons
for Comparison in {1..1000}
do
	echo "Making random permutation $Comparison !"

	# Make a random permutation of all subjects
	shuf /home/andek/Data/fcon1000/Cambridge/Cambridge_Buckner_subjects.txt > /home/andek/Research_projects/RandomGroupAnalyses/Cambridge_permutations/permutation${Comparison}.txt

done
















