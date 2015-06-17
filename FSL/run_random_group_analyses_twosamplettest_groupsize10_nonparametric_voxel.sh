#!/bin/bash

clear

for Data in 1 2
do
    if [ "$Data" -eq "1" ] ; then
		Study=Beijing		
	elif [ "$Data" -eq "2" ] ; then
		Study=Cambridge
	fi

	# Loop over designs
	for D in 1 2 3 4
	do
		if [ "$D" -eq "1" ] ; then
			Design=boxcar10
		elif [ "$D" -eq "2" ] ; then
			Design=boxcar30
		elif [ "$D" -eq "3" ] ; then
			Design=Event1
		elif [ "$D" -eq "4" ] ; then
			Design=Event2
		fi

		# Loop over different smoothing levels
		for S in 1 2 3 4
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
			fi

			# Loop over many random group comparisons
			for Comparison in {1..1000}
			do
			echo "Starting random group comparison $Comparison !"

				# Read a pregenerated permutation
				Randomized=`cat /home/andek/Research_projects/RandomGroupAnalyses/${Study}_permutations/permutation${Comparison}.txt`
	
				#echo ${Randomized[@]}
		
				Subjects=()
		   		subjectstring=${Randomized[$((0))]}
			    Subjects+=($subjectstring)

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
				Results/${Study}/${Smoothing}/${Design}/${Subject20}.feat/reg_standard/stats/cope1.nii.gz 
	
				#-------------------------------------------------------
				# Run group analysis using permutation test in BROCCOLI
				#-------------------------------------------------------

				./RandomiseGroupLevel all_subjects.nii.gz -design design_matrix_twosamplettest_groupsize10.mat -contrasts contrasts_twosamplettest_groupsize10.con -mask MNI152_T1_2mm_brain_mask.nii.gz -permutations 1000 -quiet -inferencemode 0 -permutationfile permutations_twosamplettest_groupsize10.txt > log.txt

				# Equivalent call to randomise
				# randomise -i all_subjects.nii.gz -o test -d design.mat -t design.con -P -x -n 1000 -m MNI152_T1_2mm_brain_mask.nii.gz

				# Count number of lines in log
   				Lines=`cat log.txt | wc -l`
   				if [ "$Lines" -gt "2" ] ; then
					((SignificantDifferences++))
   				    echo "Significant group difference detected!"
				fi
		
				echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !"

			done

			echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !" > /home/andek/Research_projects/RandomGroupAnalyses/Results/results_broccoli_twosamplettest_${Study}_${Design}_${Smoothing}_perm_voxel_groupsize10.txt

		done
	done
done














