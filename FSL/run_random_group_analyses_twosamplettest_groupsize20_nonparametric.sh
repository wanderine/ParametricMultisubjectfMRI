#!/bin/bash

clear

Design=boxcar10
#Study=Cambridge
Study=Beijing

results_directory=/home/andek/Research_projects/RandomGroupAnalyses/Results/${Study}/${Smoothing}/${Design}
design_directory=/home/andek/Research_projects/RandomGroupAnalyses/Design_templates
temp_directory=/home/andek/Research_projects/RandomGroupAnalyses/temp

# Loop over different cluster defining thresholds
for C in 1 2
do

	if [ "$C" -eq "1" ] ; then
		ClusterDefiningThreshold=2.3
	elif [ "$C" -eq "2" ] ; then
		ClusterDefiningThreshold=3.1
	fi

	# Loop over different smoothing levels
	for S in 1 2 3 4 5 6 7
	do
		SignificantDifferences=0

		date1=$(date +"%s")

		if [ "$S" -eq "1" ] ; then
			Smoothing=4mm
		elif [ "$S" -eq "2" ] ; then
			Smoothing=6mm
		elif [ "$S" -eq "3" ] ; then
			Smoothing=8mm
		elif [ "$S" -eq "4" ] ; then
			Smoothing=10mm
		elif [ "$S" -eq "5" ] ; then
			Smoothing=12mm
		elif [ "$S" -eq "6" ] ; then
			Smoothing=14mm
		elif [ "$S" -eq "7" ] ; then
			Smoothing=16mm
		fi

		# Loop over many random group comparisons
		#for Comparison in {1..1000}
		for Comparison in {1..1000}
		do
		echo "Starting random group comparison $Comparison !"

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
	
			echo $Subject1
			echo $Subject2
			echo $Subject3
			echo $Subject4
			echo $Subject5
			echo $Subject6
			echo $Subject7
			echo $Subject8
			echo $Subject9
			echo $Subject10

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

			#-------------------------------------------------------
			# Run group analysis using permutation test in BROCCOLI
			#-------------------------------------------------------

			./RandomiseGroupLevel all_subjects.nii.gz -design design_matrix_twosamplettest_groupsize20.mat -contrasts contrasts_twosamplettest_groupsize20.con -mask MNI152_T1_2mm_brain_mask.nii.gz -permutations 1000 -quiet -cdt ${ClusterDefiningThreshold} -permutationfile permutations_twosamplettest_groupsize20.txt > log.txt

			# Equivalent call to randomise
			# randomise -i all_subjects.nii.gz -o test -d design.mat -t design.con -P -c ${ClusterDefiningThreshold} -n 1000 -m MNI152_T1_2mm_brain_mask.nii.gz

			# Count number of lines in log
    		Lines=`cat log.txt | wc -l`
    		if [ "$Lines" -gt "2" ] ; then
				((SignificantDifferences++))
    		    echo "Significant group difference detected!"
			fi
	
			echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !"

		done

		echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !" > /home/andek/Research_projects/RandomGroupAnalyses/Results/results_broccoli_twosamplettest_${Study}_${Design}_${Smoothing}_perm_${ClusterDefiningThreshold}_groupsize20.txt

	done

done















