#!/bin/bash

clear

# time randomise -i all_subjects.nii.gz -o test -d design.mat -t design.con -P -c 2.3  -n 10001 -m MNI152_T1_2mm_brain_mask.nii.gz

SignificantDifferences=0
Smoothing=4mm
Design=boxcar30
Study=Cambridge
#Study=Beijing

results_directory=/home/andek/Research_projects/RandomGroupAnalyses/Results/${Study}/${Smoothing}/${Design}
design_directory=/home/andek/Research_projects/RandomGroupAnalyses/Design_templates
temp_directory=/home/andek/Research_projects/RandomGroupAnalyses/temp

# Remove old results
rm -rf /home/andek/Research_projects/RandomGroupAnalyses/Results/${Study}/${Smoothing}/${Design}/Group*

# Cluster defining threshold
ClusterDefiningThreshold=2.3

# Loop over many random group comparisons
#for Comparison in {1..1000}
for Comparison in {1..1000}
do
	echo "Starting random group comparison $Comparison !"

	# Make a random permutation of all subjects
	#Randomized=`shuf /home/andek/Data/fcon1000/Cambridge/Cambridge_Buckner_subjects.txt`

	# Read a pregenerated permutation
	Randomized=`cat /home/andek/Research_projects/RandomGroupAnalyses/${Study}_permutations/permutation${Comparison}.txt`

	#echo ${Randomized[@]}

	thirtynine=39

	Subjects=()

	# Put the first 40 subjects into Subjects
	for subject in $(seq 0 $(($thirtynine)) )	
	do
    	subjectstring=${Randomized[$(($subject))]}
	    Subjects+=($subjectstring)
	done

	Subject1=${Subjects[$((0))]}
	Subject2=${Subjects[$((1))]}
	Subject3=${Subjects[$((2))]}
	Subject4=${Subjects[$((3))]}
	Subject5=${Subjects[$((4))]}
	Subject6=${Subjects[$((5))]}
	Subject7=${Subjects[$((6))]}
	Subject8=${Subjects[$((7))]}
	Subject9=${Subjects[$((8))]}
	Subject10=${Subjects[$((9))]}
	Subject11=${Subjects[$((10))]}
	Subject12=${Subjects[$((11))]}
	Subject13=${Subjects[$((12))]}
	Subject14=${Subjects[$((13))]}
	Subject15=${Subjects[$((14))]}
	Subject16=${Subjects[$((15))]}
	Subject17=${Subjects[$((16))]}
	Subject18=${Subjects[$((17))]}
	Subject19=${Subjects[$((18))]}
	Subject20=${Subjects[$((19))]}

	Subject21=${Subjects[$((20))]}
	Subject22=${Subjects[$((21))]}
	Subject23=${Subjects[$((22))]}
	Subject24=${Subjects[$((23))]}
	Subject25=${Subjects[$((24))]}
	Subject26=${Subjects[$((25))]}
	Subject27=${Subjects[$((26))]}
	Subject28=${Subjects[$((27))]}
	Subject29=${Subjects[$((28))]}
	Subject30=${Subjects[$((29))]}
	Subject31=${Subjects[$((30))]}
	Subject32=${Subjects[$((31))]}
	Subject33=${Subjects[$((32))]}
	Subject34=${Subjects[$((33))]}
	Subject35=${Subjects[$((34))]}
	Subject36=${Subjects[$((35))]}
	Subject37=${Subjects[$((36))]}
	Subject38=${Subjects[$((37))]}
	Subject39=${Subjects[$((38))]}
	Subject40=${Subjects[$((39))]}


	#-------------------------------------
	# Put data into one nifti file
	#-------------------------------------

	rm all_subjects.nii.gz

	fslmerge -t all_subjects.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject1}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject2}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject3}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject4}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject5}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject6}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject7}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject8}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject9}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject10}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject11}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject12}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject13}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject14}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject15}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject16}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject17}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject18}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject19}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject20}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject21}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject22}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject23}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject24}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject25}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject26}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject27}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject28}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject29}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject30}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject31}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject32}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject33}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject34}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject35}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject36}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject37}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject38}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject39}.feat/reg_standard/stats/cope1.nii.gz \
	Results/${Study}/${Smoothing}/${Design}/${Subject40}.feat/reg_standard/stats/cope1.nii.gz

	#-------------------------------------
	# Run group analysis
	#-------------------------------------

	./RandomiseGroupLevel all_subjects.nii.gz -design design_matrix_40_subjects.mat -contrasts contrasts_40_subjects.con -mask MNI152_T1_2mm_brain_mask.nii.gz -permutations 1000 -quiet -permutationfile permutations.txt > log.txt

	# Count number of lines
    Lines=`cat log.txt | wc -l`
    if [ "$Lines" -gt "2" ] ; then
		((SignificantDifferences++))
        echo "Significant group difference detected!"
	fi
	
	echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !"

done















