#!/bin/bash

# Set variables

clear

# Use z-scores instead of t-scores, to not change threshold for different group sizes

BonfThreshold=4.77 # p = 0.05, corrected for 53 000 tests

Study=Cambridge
#Study=Beijing

for D in 1 2 3 4
do

	if [ "$D" -eq "1" ]; then
		Design=boxcar10_REML
		DesignName=boxcar10
	elif [ "$D" -eq "2" ]; then
		Design=boxcar30_REML
		DesignName=boxcar30
	elif [ "$D" -eq "3" ]; then
		Design=regularEvent_REML
		DesignName=regularEvent
	elif [ "$D" -eq "4" ]; then
		Design=randomEvent_REML
		DesignName=randomEvent
	fi

	# Loop over different smoothing levels
	for SmoothingLevel in 1 2 3 4
	do

		if [ "$SmoothingLevel" -eq "1" ] ; then
			Smoothing=4mm
		elif [ "$SmoothingLevel" -eq "2" ] ; then
			Smoothing=6mm
		elif [ "$SmoothingLevel" -eq "3" ] ; then
			Smoothing=8mm
		elif [ "$SmoothingLevel" -eq "4" ] ; then
			Smoothing=10mm
		fi

		NoGroupMask=0
		NoGroupAnalysis=0

		GroupDirectory=/home/andek/Research_projects/RandomGroupAnalyses/Results/${Study}/${Smoothing}/${Design}
		ResultsDirectory=/home/andek/Research_projects/RandomGroupAnalyses/Results/${Study}/${Smoothing}/${Design}/GroupAnalyses

		# Delete old results
		rm $ResultsDirectory/*
	
		rm /home/andek/.afni.log
	
		Comparisons=0.0
		SignificantDifferences=0.0
		one=1.0
		FWE=0.0

		# Loop over many random group comparisons
		for Comparison in {1..1000}
		do
			Comparisons=$(echo "scale=3;$Comparisons + $one" | bc)
	
			echo -e "\n"
			echo "Starting random group analysis $Comparison !"
			echo -e "\n"

			# Read a pregenerated permutation
			Randomized=`cat /home/andek/Research_projects/RandomGroupAnalyses/${Study}_permutations/permutation${Comparison}.txt`

			Subjects=()
			subjectstring=${Randomized[$((0))]}
			Subjects+=($subjectstring)

			# Put the first 20 subjects into Subjects
			
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

			# Remove old group mask
			rm $ResultsDirectory/group_mask.nii

			# Create group mask
			3dMean -prefix $ResultsDirectory/group_mask.nii -mask_inter 	\
		            $GroupDirectory/${Subject1}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject2}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject3}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject4}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject5}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject6}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject7}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject8}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject9}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject10}.results/mask_group+tlrc.HEAD \
   			        $GroupDirectory/${Subject11}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject12}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject13}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject14}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject15}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject16}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject17}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject18}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject19}.results/mask_group+tlrc.HEAD \
		            $GroupDirectory/${Subject20}.results/mask_group+tlrc.HEAD 

			# Check if group mask was created correctly
		    if [ -e $ResultsDirectory/group_mask.nii  ]; then
	
				# Run a one-sample t-test, transform to z-values
	
				3dttest++ -toz -mask $ResultsDirectory/group_mask.nii -prefix $ResultsDirectory/${Smoothing}_${Design}_${Comparison}             \
			          -setA Group1  \
			             ${Subject1} "$GroupDirectory/${Subject1}.results/stats.${Subject1}+tlrc[1]" \
			             ${Subject2} "$GroupDirectory/${Subject2}.results/stats.${Subject2}+tlrc[1]" \
			             ${Subject3} "$GroupDirectory/${Subject3}.results/stats.${Subject3}+tlrc[1]" \
			             ${Subject4} "$GroupDirectory/${Subject4}.results/stats.${Subject4}+tlrc[1]" \
			             ${Subject5} "$GroupDirectory/${Subject5}.results/stats.${Subject5}+tlrc[1]" \
			             ${Subject6} "$GroupDirectory/${Subject6}.results/stats.${Subject6}+tlrc[1]" \
			             ${Subject7} "$GroupDirectory/${Subject7}.results/stats.${Subject7}+tlrc[1]" \
			             ${Subject8} "$GroupDirectory/${Subject8}.results/stats.${Subject8}+tlrc[1]" \
			             ${Subject9} "$GroupDirectory/${Subject9}.results/stats.${Subject9}+tlrc[1]" \
			             ${Subject10} "$GroupDirectory/${Subject10}.results/stats.${Subject10}+tlrc[1]" \
			             ${Subject11} "$GroupDirectory/${Subject11}.results/stats.${Subject11}+tlrc[1]" \
			             ${Subject12} "$GroupDirectory/${Subject12}.results/stats.${Subject12}+tlrc[1]" \
			             ${Subject13} "$GroupDirectory/${Subject13}.results/stats.${Subject13}+tlrc[1]" \
			             ${Subject14} "$GroupDirectory/${Subject14}.results/stats.${Subject14}+tlrc[1]" \
			             ${Subject15} "$GroupDirectory/${Subject15}.results/stats.${Subject15}+tlrc[1]" \
			             ${Subject16} "$GroupDirectory/${Subject16}.results/stats.${Subject16}+tlrc[1]" \
			             ${Subject17} "$GroupDirectory/${Subject17}.results/stats.${Subject17}+tlrc[1]" \
			             ${Subject18} "$GroupDirectory/${Subject18}.results/stats.${Subject18}+tlrc[1]" \
			             ${Subject19} "$GroupDirectory/${Subject19}.results/stats.${Subject19}+tlrc[1]" \
			             ${Subject20} "$GroupDirectory/${Subject20}.results/stats.${Subject20}+tlrc[1]" 

				# Check if group results were created correctly
				if [ -e $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc.HEAD  ]; then

					# Apply Bonferroni threshold to statistical map
					rm differencemap.nii.gz
					3dTcat -prefix differencemap.nii.gz $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc[1]

					temp=`fslstats differencemap.nii.gz -R`

					Values=()
					string=${temp[$((0))]}
					Values+=($string)
					Largest=${Values[$((1))]}

					echo "Largest value is $Largest !"
			
					comp=`echo "$Largest > $BonfThreshold" | bc`
		
					if [ $comp -eq 0 ]; then 
						echo "No significant group activation detected"
						FWE=$(echo "scale=3; $SignificantDifferences /  ${Comparisons}" | bc)
						echo -e "\n"
						echo "Current FWE is $FWE"
						echo -e "\n"
					else
						echo "Significant group activation detected!"
						SignificantDifferences=$(echo "scale=3;$SignificantDifferences + $one" | bc)
						FWE=$(echo "scale=3; $SignificantDifferences /  ${Comparisons}" | bc)
						echo -e "\n"
						echo "Current FWE is $FWE"
						echo -e "\n"
					fi
					echo -e "\n"

				else
					echo "Group analysis was not executed correctly!"
					((NoGroupAnalysis++))
				fi
	
			else
				echo "Group mask was not created correctly!"
				((NoGroupMask++))
			fi

		done

		echo "Current FWE is $FWE" > Results/results_onesamplettest_${Study}_${Smoothing}_${DesignName}_OLS_voxel_groupsize20.txt
		echo "Number of failed group masks is $NoGroupMask" >> Results/results_onesamplettest_${Study}_${Smoothing}_${DesignName}_OLS_voxel_groupsize20.txt
		echo "Number of failed group analyses is $NoGroupAnalysis" >> Results/results_onesamplettest_${Study}_${Smoothing}_${DesignName}_OLS_voxel_groupsize20.txt

	done
done




