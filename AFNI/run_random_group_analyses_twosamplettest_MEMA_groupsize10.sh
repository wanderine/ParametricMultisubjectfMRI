#!/bin/bash

# Set variables

clear

#Study=Cambridge
Study=Beijing

nineteen=19
NumberOfSubjects=20.0

ClusterDefiningThresholdP1=0.01
ClusterDefiningThreshold1=2.552
CDT1=2.3

ClusterDefiningThresholdP2=0.001
ClusterDefiningThreshold2=3.610
CDT2=3.1	

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

		#touch SmoothnessEstimates/xsmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize20.txt 
		#touch SmoothnessEstimates/ysmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize20.txt 
		#touch SmoothnessEstimates/zsmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize20.txt 

		# Delete old results
		rm $ResultsDirectory/*
	
		rm /home/andek/.afni.log
	
		Comparisons=0.0
		SignificantDifferences1=0.0
		SignificantDifferences2=0.0
		one=1.0
		FWE1=0.0
		FWE2=0.0

		# Loop over many random group comparisons
		for Comparison in {1..1000}
		do
			Comparisons=$(echo "scale=3;$Comparisons + $one" | bc)
	
			echo -e "\n"
			echo "Starting random group comparison $Comparison !"
			echo -e "\n"

			# Read a pregenerated permutation
			Randomized=`cat /home/andek/Research_projects/RandomGroupAnalyses/${Study}_permutations/permutation${Comparison}.txt`

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

			#echo "$GroupDirectory/${Subject1}.results/stats.${Subject1}+tlrc[0]"
	
			#echo "$Subject1"
			#echo "$Subject2"
			#echo "$Subject3"
			#echo "$Subject4"
			#echo "$Subject5"

			# Remove old group mask
			rm $ResultsDirectory/group_mask*

			# Create group mask
			3dMean -prefix $ResultsDirectory/group_mask -mask_inter 	\
		            $GroupDirectory/${Subject1}.results/full_mask.${Subject1}+tlrc.HEAD \
		            $GroupDirectory/${Subject2}.results/full_mask.${Subject2}+tlrc.HEAD \
		            $GroupDirectory/${Subject3}.results/full_mask.${Subject3}+tlrc.HEAD \
		            $GroupDirectory/${Subject4}.results/full_mask.${Subject4}+tlrc.HEAD \
		            $GroupDirectory/${Subject5}.results/full_mask.${Subject5}+tlrc.HEAD \
		            $GroupDirectory/${Subject6}.results/full_mask.${Subject6}+tlrc.HEAD \
		            $GroupDirectory/${Subject7}.results/full_mask.${Subject7}+tlrc.HEAD \
		            $GroupDirectory/${Subject8}.results/full_mask.${Subject8}+tlrc.HEAD \
		            $GroupDirectory/${Subject9}.results/full_mask.${Subject9}+tlrc.HEAD \
		            $GroupDirectory/${Subject10}.results/full_mask.${Subject10}+tlrc.HEAD \
	    	        $GroupDirectory/${Subject11}.results/full_mask.${Subject11}+tlrc.HEAD \
		            $GroupDirectory/${Subject12}.results/full_mask.${Subject12}+tlrc.HEAD \
		            $GroupDirectory/${Subject13}.results/full_mask.${Subject13}+tlrc.HEAD \
		            $GroupDirectory/${Subject14}.results/full_mask.${Subject14}+tlrc.HEAD \
		            $GroupDirectory/${Subject15}.results/full_mask.${Subject15}+tlrc.HEAD \
		            $GroupDirectory/${Subject16}.results/full_mask.${Subject16}+tlrc.HEAD \
		            $GroupDirectory/${Subject17}.results/full_mask.${Subject17}+tlrc.HEAD \
		            $GroupDirectory/${Subject18}.results/full_mask.${Subject18}+tlrc.HEAD \
		            $GroupDirectory/${Subject19}.results/full_mask.${Subject19}+tlrc.HEAD \
		            $GroupDirectory/${Subject20}.results/full_mask.${Subject20}+tlrc.HEAD 

			# Check if group mask was created correctly
		    if [ -e $ResultsDirectory/group_mask+tlrc.HEAD  ]; then

				# Run a two-sample t-test

				3dMEMA -groups A B -jobs 8 -mask $ResultsDirectory/group_mask+tlrc.HEAD -prefix $ResultsDirectory/${Smoothing}_${Design}_${Comparison}    \
			          -set AA                                             \
			             ${Subject1} "$GroupDirectory/${Subject1}.results/stats.${Subject1}_REML+tlrc[1]" "$GroupDirectory/${Subject1}.results/stats.${Subject1}_REML+tlrc[2]"\
			             ${Subject2} "$GroupDirectory/${Subject2}.results/stats.${Subject2}_REML+tlrc[1]" "$GroupDirectory/${Subject2}.results/stats.${Subject2}_REML+tlrc[2]"\
			             ${Subject3} "$GroupDirectory/${Subject3}.results/stats.${Subject3}_REML+tlrc[1]" "$GroupDirectory/${Subject3}.results/stats.${Subject3}_REML+tlrc[2]"\
			             ${Subject4} "$GroupDirectory/${Subject4}.results/stats.${Subject4}_REML+tlrc[1]" "$GroupDirectory/${Subject4}.results/stats.${Subject4}_REML+tlrc[2]"\
			             ${Subject5} "$GroupDirectory/${Subject5}.results/stats.${Subject5}_REML+tlrc[1]" "$GroupDirectory/${Subject5}.results/stats.${Subject5}_REML+tlrc[2]"\
			             ${Subject6} "$GroupDirectory/${Subject6}.results/stats.${Subject6}_REML+tlrc[1]" "$GroupDirectory/${Subject6}.results/stats.${Subject6}_REML+tlrc[2]"\
			             ${Subject7} "$GroupDirectory/${Subject7}.results/stats.${Subject7}_REML+tlrc[1]" "$GroupDirectory/${Subject7}.results/stats.${Subject7}_REML+tlrc[2]"\
			             ${Subject8} "$GroupDirectory/${Subject8}.results/stats.${Subject8}_REML+tlrc[1]" "$GroupDirectory/${Subject8}.results/stats.${Subject8}_REML+tlrc[2]"\
			             ${Subject9} "$GroupDirectory/${Subject9}.results/stats.${Subject9}_REML+tlrc[1]" "$GroupDirectory/${Subject9}.results/stats.${Subject9}_REML+tlrc[2]"\
			             ${Subject10} "$GroupDirectory/${Subject10}.results/stats.${Subject10}_REML+tlrc[1]" "$GroupDirectory/${Subject10}.results/stats.${Subject10}_REML+tlrc[2]"\
		    	      -set BB                                               \
			             ${Subject11} "$GroupDirectory/${Subject11}.results/stats.${Subject11}_REML+tlrc[1]" "$GroupDirectory/${Subject11}.results/stats.${Subject11}_REML+tlrc[2]"\
			             ${Subject12} "$GroupDirectory/${Subject12}.results/stats.${Subject12}_REML+tlrc[1]" "$GroupDirectory/${Subject12}.results/stats.${Subject12}_REML+tlrc[2]"\
			             ${Subject13} "$GroupDirectory/${Subject13}.results/stats.${Subject13}_REML+tlrc[1]" "$GroupDirectory/${Subject13}.results/stats.${Subject13}_REML+tlrc[2]"\
			             ${Subject14} "$GroupDirectory/${Subject14}.results/stats.${Subject14}_REML+tlrc[1]" "$GroupDirectory/${Subject14}.results/stats.${Subject14}_REML+tlrc[2]"\
			             ${Subject15} "$GroupDirectory/${Subject15}.results/stats.${Subject15}_REML+tlrc[1]" "$GroupDirectory/${Subject15}.results/stats.${Subject15}_REML+tlrc[2]"\
			             ${Subject16} "$GroupDirectory/${Subject16}.results/stats.${Subject16}_REML+tlrc[1]" "$GroupDirectory/${Subject16}.results/stats.${Subject16}_REML+tlrc[2]"\
			             ${Subject17} "$GroupDirectory/${Subject17}.results/stats.${Subject17}_REML+tlrc[1]" "$GroupDirectory/${Subject17}.results/stats.${Subject17}_REML+tlrc[2]"\
			             ${Subject18} "$GroupDirectory/${Subject18}.results/stats.${Subject18}_REML+tlrc[1]" "$GroupDirectory/${Subject18}.results/stats.${Subject18}_REML+tlrc[2]"\
			    	     ${Subject19} "$GroupDirectory/${Subject19}.results/stats.${Subject19}_REML+tlrc[1]" "$GroupDirectory/${Subject19}.results/stats.${Subject19}_REML+tlrc[2]"\
			             ${Subject20} "$GroupDirectory/${Subject20}.results/stats.${Subject20}_REML+tlrc[1]" "$GroupDirectory/${Subject20}.results/stats.${Subject20}_REML+tlrc[2]"

				# Check if group results were created correctly
				if [ -e $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc.HEAD  ]; then

					# Calculate mean smoothness
	
					AllSmoothnesses=()
					i=0

					# Read all smoothness estimations from file
					for subject in $(seq 0 $(($nineteen)) )	
					do
						smoothnesses=`cat $GroupDirectory/${Subjects[$((subject))]}.results/blur.errts.1D`
						smoothnessstring=${smoothnesses[$(($i))]}
						AllSmoothnesses+=($smoothnessstring)
					done

					three=3

					# Calculate mean x smoothness
					XSmoothness=0.0
					index=0
					for subject in $(seq 0 $(($nineteen)) )
					do
						XSmoothness=$(echo $XSmoothness + ${AllSmoothnesses[$(($index))]} | bc)
						index=$((index + three))
					done
					XSmoothness=$(echo "scale=3;$XSmoothness /  ${NumberOfSubjects}" | bc)
		
					# Calculate mean y smoothness
					YSmoothness=0.0
					index=1
					for subject in $(seq 0 $(($nineteen)) )
					do
						YSmoothness=$(echo $YSmoothness + ${AllSmoothnesses[$(($index))]} | bc)
						index=$((index + three))
					done
					YSmoothness=$(echo "scale=3; $YSmoothness /  ${NumberOfSubjects}" | bc)
	
					# Calculate mean z smoothness
					ZSmoothness=0.0
					index=2
					for subject in $(seq 0 $(($nineteen)) )
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

					#echo "$XSmoothness" >> SmoothnessEstimates/xsmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize20.txt 
					#echo "$YSmoothness" >> SmoothnessEstimates/ysmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize20.txt 
					#echo "$ZSmoothness" >> SmoothnessEstimates/zsmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize20.txt 

					# Now run cluster simulation to get p-values for clusters
					3dClustSim -mask $ResultsDirectory/group_mask+tlrc.HEAD -fwhmxyz ${XSmoothness} ${YSmoothness} ${ZSmoothness} -athr 0.05 -pthr $ClusterDefiningThresholdP1 -nodec > clusterthreshold.txt

					echo -e "\n"

					# Get cluster threshold as the last word/number
					ClusterExtentThreshold1=`less clusterthreshold.txt | awk 'END { print $NF }'`
	
					echo -e "\n"
					echo "Cluster threshold 1 is $ClusterExtentThreshold1"
					echo -e "\n"

					# Finally apply same voxel threshold to statistical map, and calculate the size of the largest cluster

					# Print clusters to screen
					3dclust -1dindex 5 -1tindex 5 -1noneg -1thresh $ClusterDefiningThreshold1 -dxyz=1 1.01 $ClusterExtentThreshold1 $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc
		
					# Print clusters to text file
					3dclust -1dindex 5 -1tindex 5 -1noneg -1thresh $ClusterDefiningThreshold1 -dxyz=1 1.01 $ClusterExtentThreshold1 $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc > clustersizes.txt

					echo -e "\n"

				    String=CLUSTERS #Search for NO CLUSTERS
					File=clustersizes.txt
					if grep -q $String "$File"; then 
						echo "No significant group difference detected"
						FWE1=$(echo "scale=3; $SignificantDifferences1 /  ${Comparisons}" | bc)
						echo "Current FWE1 is $FWE1"
					else
						echo "Significant group difference detected!"
						SignificantDifferences1=$(echo "scale=3;$SignificantDifferences1 + $one" | bc)
						FWE1=$(echo "scale=3; $SignificantDifferences1 /  ${Comparisons}" | bc)
						echo "Current FWE1 is $FWE1"
					fi
					echo -e "\n"



					# Now run cluster simulation to get p-values for clusters
					3dClustSim -mask $ResultsDirectory/group_mask+tlrc.HEAD -fwhmxyz ${XSmoothness} ${YSmoothness} ${ZSmoothness} -athr 0.05 -pthr $ClusterDefiningThresholdP2 -nodec > clusterthreshold.txt

					# Get cluster threshold as the last word/number
					ClusterExtentThreshold2=`less clusterthreshold.txt | awk 'END { print $NF }'`
	
					echo -e "\n"
					echo "Cluster threshold 2 is $ClusterExtentThreshold2"
					echo -e "\n"

					# Finally apply same voxel threshold to statistical map, and calculate the size of the largest cluster

					# Print clusters to screen
					3dclust -1dindex 5 -1tindex 5 -1noneg -1thresh $ClusterDefiningThreshold2 -dxyz=1 1.01 $ClusterExtentThreshold2 $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc
		
					# Print clusters to text file
					3dclust -1dindex 5 -1tindex 5 -1noneg -1thresh $ClusterDefiningThreshold2 -dxyz=1 1.01 $ClusterExtentThreshold2 $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc > clustersizes.txt

					echo -e "\n"
	
				    String=CLUSTERS #Search for NO CLUSTERS
					File=clustersizes.txt
					if grep -q $String "$File"; then 
						echo "No significant group difference detected"
						FWE2=$(echo "scale=3; $SignificantDifferences2 /  ${Comparisons}" | bc)
						echo "Current FWE2 is $FWE2"
					else
						echo "Significant group difference detected!"
						SignificantDifferences2=$(echo "scale=3;$SignificantDifferences2 + $one" | bc)
						FWE2=$(echo "scale=3; $SignificantDifferences2 /  ${Comparisons}" | bc)
						echo "Current FWE2 is $FWE2"
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

		echo "Current FWE 1 is $FWE1" > Results/results_AFNI_twosamplettest_${Study}_${Smoothing}_${DesignName}_MEMA_${CDT1}_groupsize10.txt
		echo "Number of failed group masks is $NoGroupMask" >> Results/results_AFNI_twosamplettest_${Study}_${Smoothing}_${DesignName}_MEMA_${CDT1}_groupsize10.txt
		echo "Number of failed group analyses is $NoGroupAnalysis" >> Results/results_AFNI_twosamplettest_${Study}_${Smoothing}_${DesignName}_MEMA_${CDT1}_groupsize10.txt

		echo "Current FWE 2 is $FWE2" > Results/results_AFNI_twosamplettest_${Study}_${Smoothing}_${DesignName}_MEMA_${CDT2}_groupsize10.txt
		echo "Number of failed group masks is $NoGroupMask" >> Results/results_AFNI_twosamplettest_${Study}_${Smoothing}_${DesignName}_MEMA_${CDT2}_groupsize10.txt
		echo "Number of failed group analyses is $NoGroupAnalysis" >> Results/results_AFNI_twosamplettest_${Study}_${Smoothing}_${DesignName}_MEMA_${CDT2}_groupsize10.txt

	done	
done





