#!/bin/bash

# Set variables

clear

# Use z-scores instead of t-scores, to not change threshold for different group sizes

# z-value of 2.326 corresponds to p = 0.01 (one sided)
# z-value of 3.086 corresponds to p = 0.001 (one sided)

#ClusterDefiningThresholdP=0.01
#ClusterDefiningThreshold=2.326
#CDT=2.3

#ClusterDefiningThresholdP=0.001
#ClusterDefiningThreshold=3.086
#CDT=3.1

Design=boxcar30_REML
DesignName=boxcar30

Study=Cambridge
#Study=Beijing

fourteen=14
NumberOfSubjects=15.0

for Cluster in 1 2
do

	if [ "$Cluster" -eq "1" ]; then
		ClusterDefiningThresholdP=0.01
		ClusterDefiningThreshold=2.326
		CDT=2.3
	elif [ "$Cluster" -eq "2" ]; then
		ClusterDefiningThresholdP=0.001
		ClusterDefiningThreshold=3.086
		CDT=3.1	
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

		touch SmoothnessEstimates/xsmoothnesses_onesamplettest_${Study}_${Smoothing}_${DesignName}_groupsize15.txt 
		touch SmoothnessEstimates/ysmoothnesses_onesamplettest_${Study}_${Smoothing}_${DesignName}_groupsize15.txt 
		touch SmoothnessEstimates/zsmoothnesses_onesamplettest_${Study}_${Smoothing}_${DesignName}_groupsize15.txt 

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
	
			# Put the first 15 subjects into Subjects
			
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

			#echo "$GroupDirectory/${Subject1}.results/stats.${Subject1}+tlrc[0]"
		
			#echo "$Subject1"
			#echo "$Subject2"
			#echo "$Subject3"
			#echo "$Subject4"
			#echo "$Subject5"

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

				# Check if group results were created correctly
				if [ -e $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc.HEAD  ]; then

					# Calculate mean smoothness
	
					AllSmoothnesses=()
					i=0
	
					# Read all smoothness estimations from file
					for subject in $(seq 0 $(($fourteen)) )	
					do
						smoothnesses=`cat $GroupDirectory/${Subjects[$((subject))]}.results/blur.errts.1D`
						smoothnessstring=${smoothnesses[$(($i))]}
						AllSmoothnesses+=($smoothnessstring)
					done

					three=3

					# Calculate mean x smoothness
					XSmoothness=0.0
					index=0
					for subject in $(seq 0 $(($fourteen)) )
					do
						XSmoothness=$(echo $XSmoothness + ${AllSmoothnesses[$(($index))]} | bc)
						index=$((index + three))
					done
					XSmoothness=$(echo "scale=3;$XSmoothness /  ${NumberOfSubjects}" | bc)

					# Calculate mean y smoothness
					YSmoothness=0.0
					index=1
					for subject in $(seq 0 $(($fourteen)) )
					do
						YSmoothness=$(echo $YSmoothness + ${AllSmoothnesses[$(($index))]} | bc)
						index=$((index + three))
					done
					YSmoothness=$(echo "scale=3; $YSmoothness /  ${NumberOfSubjects}" | bc)

					# Calculate mean z smoothness
					ZSmoothness=0.0
					index=2
					for subject in $(seq 0 $(($fourteen)) )
					do
						ZSmoothness=$(echo $ZSmoothness + ${AllSmoothnesses[$(($index))]} | bc)
						index=$((index + three))
					done
					ZSmoothness=$(echo "scale=3; $ZSmoothness /  ${NumberOfSubjects}" | bc)

					#echo ${AllSmoothnesses[*]}
		
					echo -e "\n"
					echo "Mean x smoothness is $XSmoothness"
					echo "Mean y smoothness is $YSmoothness"
					echo "Mean z smoothness is $ZSmoothness"
					echo -e "\n"
	
					echo "$XSmoothness" >> SmoothnessEstimates/xsmoothnesses_onesamplettest_${Study}_${Smoothing}_${DesignName}_groupsize15.txt 
					echo "$YSmoothness" >> SmoothnessEstimates/ysmoothnesses_onesamplettest_${Study}_${Smoothing}_${DesignName}_groupsize15.txt 
					echo "$ZSmoothness" >> SmoothnessEstimates/zsmoothnesses_onesamplettest_${Study}_${Smoothing}_${DesignName}_groupsize15.txt 

					# Now run cluster simulation to get p-values for clusters
					3dClustSim -mask $ResultsDirectory/group_mask.nii -fwhmxyz ${XSmoothness} ${YSmoothness} ${ZSmoothness} -athr 0.05 -pthr $ClusterDefiningThresholdP -nodec > clusterthreshold.txt

					echo -e "\n"

					# Get cluster threshold as the last word/number
					ClusterExtentThreshold=`less clusterthreshold.txt | awk 'END { print $NF }'`
	
					echo -e "\n"
					echo "Cluster threshold is $ClusterExtentThreshold"
					echo -e "\n"

					# Finally apply same voxel threshold to statistical map, and calculate the size of the largest cluster

					# Print clusters to screen
					3dclust -1dindex 1 -1tindex 1 -1noneg -1thresh $ClusterDefiningThreshold -dxyz=1 1.01 $ClusterExtentThreshold $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc
	
					# Print clusters to text file
					3dclust -1dindex 1 -1tindex 1 -1noneg -1thresh $ClusterDefiningThreshold -dxyz=1 1.01 $ClusterExtentThreshold $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc > clustersizes.txt

					echo -e "\n"
		
				    String=CLUSTERS #Search for NO CLUSTERS
					File=clustersizes.txt
					if grep -q $String "$File"; then 
						echo "No significant group activation detected"
						FWE=$(echo "scale=3; $SignificantDifferences /  ${Comparisons}" | bc)
						echo "Current FWE is $FWE"
					else
						echo "Significant group activation detected!"
						SignificantDifferences=$(echo "scale=3;$SignificantDifferences + $one" | bc)
						FWE=$(echo "scale=3; $SignificantDifferences /  ${Comparisons}" | bc)
						echo "Current FWE is $FWE"
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

		echo "Current FWE is $FWE" > Results/results_onesamplettest_${Study}_${Smoothing}_${DesignName}_OLS_${CDT}_groupsize15.txt
		echo "Number of failed group masks is $NoGroupMask" >> Results/results_onesamplettest_${Study}_${Smoothing}_${DesignName}_OLS_${CDT}_groupsize15.txt
		echo "Number of failed group analyses is $NoGroupAnalysis" >> Results/results_onesamplettest_${Study}_${Smoothing}_${DesignName}_OLS_${CDT}_groupsize15.txt

	done
done




