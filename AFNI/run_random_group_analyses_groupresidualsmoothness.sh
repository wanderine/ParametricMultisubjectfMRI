#!/bin/bash

# Set variables

clear

# Use z-scores instead of t-scores, to not change threshold for different group sizes

# z-value of 2.326 corresponds to p = 0.01 (one sided)
# z-value of 3.086 corresponds to p = 0.001 (one sided)

ClusterDefiningThresholdP=0.01

ClusterDefiningThreshold=2.326
CDT=2.3

#ClusterDefiningThreshold=3.086
#CDT=3.1

Design=boxcar30_REML
DesignName=boxcar30

Study=Cambridge
#Study=Beijing

NumberOfSubjects=40.0

NoGroupMask=0
NoGroupAnalysis=0

# Loop over different smoothing levels
for SmoothingLevel in 1 2 3 4 5 6 7
#for SmoothingLevel in 7
do

	if [ "$SmoothingLevel" -eq "1" ] ; then
		Smoothing=4mm
	elif [ "$SmoothingLevel" -eq "2" ] ; then
		Smoothing=6mm
	elif [ "$SmoothingLevel" -eq "3" ] ; then
		Smoothing=8mm
	elif [ "$SmoothingLevel" -eq "4" ] ; then
		Smoothing=10mm
	elif [ "$SmoothingLevel" -eq "5" ] ; then
		Smoothing=12mm
	elif [ "$SmoothingLevel" -eq "6" ] ; then
		Smoothing=14mm
	elif [ "$SmoothingLevel" -eq "7" ] ; then
		Smoothing=16mm
	fi

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
	#for Comparison in {1..2}
	do
		Comparisons=$(echo "scale=3;$Comparisons + $one" | bc)
	
		echo -e "\n"
		echo "Starting random group comparison $Comparison !"
		echo -e "\n"

		# Read a pregenerated permutation
		Randomized=`cat /home/andek/Research_projects/RandomGroupAnalyses/${Study}_permutations/permutation${Comparison}.txt`

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
	            $GroupDirectory/${Subject16}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject17}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject18}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject19}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject20}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject21}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject22}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject23}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject24}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject25}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject26}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject27}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject28}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject29}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject30}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject31}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject32}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject33}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject34}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject35}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject36}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject37}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject38}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject39}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject40}.results/mask_group+tlrc.HEAD 

		# Check if group mask was created correctly
	    if [ -e $ResultsDirectory/group_mask.nii  ]; then

			# Run a two-sample t-test, transform to z-values

			3dttest++ -toz -mask $ResultsDirectory/group_mask.nii -prefix $ResultsDirectory/${Smoothing}_${Design}_${Comparison} -AminusB                 \
		          -setA Group1                                               \
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
		             ${Subject20} "$GroupDirectory/${Subject20}.results/stats.${Subject20}+tlrc[1]" \
    		      -setB Group2                                               \
		             ${Subject21} "$GroupDirectory/${Subject21}.results/stats.${Subject21}+tlrc[1]" \
		             ${Subject22} "$GroupDirectory/${Subject22}.results/stats.${Subject22}+tlrc[1]" \
		             ${Subject23} "$GroupDirectory/${Subject23}.results/stats.${Subject23}+tlrc[1]" \
		             ${Subject24} "$GroupDirectory/${Subject24}.results/stats.${Subject24}+tlrc[1]" \
		             ${Subject25} "$GroupDirectory/${Subject25}.results/stats.${Subject25}+tlrc[1]" \
		             ${Subject26} "$GroupDirectory/${Subject26}.results/stats.${Subject26}+tlrc[1]" \
		             ${Subject27} "$GroupDirectory/${Subject27}.results/stats.${Subject27}+tlrc[1]" \
		             ${Subject28} "$GroupDirectory/${Subject28}.results/stats.${Subject28}+tlrc[1]" \
    		         ${Subject29} "$GroupDirectory/${Subject29}.results/stats.${Subject29}+tlrc[1]" \
		             ${Subject30} "$GroupDirectory/${Subject30}.results/stats.${Subject30}+tlrc[1]" \
		             ${Subject31} "$GroupDirectory/${Subject31}.results/stats.${Subject31}+tlrc[1]" \
		             ${Subject32} "$GroupDirectory/${Subject32}.results/stats.${Subject32}+tlrc[1]" \
		             ${Subject33} "$GroupDirectory/${Subject33}.results/stats.${Subject33}+tlrc[1]" \
		             ${Subject34} "$GroupDirectory/${Subject34}.results/stats.${Subject34}+tlrc[1]" \
		             ${Subject35} "$GroupDirectory/${Subject35}.results/stats.${Subject35}+tlrc[1]" \
		             ${Subject36} "$GroupDirectory/${Subject36}.results/stats.${Subject36}+tlrc[1]" \
		             ${Subject37} "$GroupDirectory/${Subject37}.results/stats.${Subject37}+tlrc[1]" \
		             ${Subject38} "$GroupDirectory/${Subject38}.results/stats.${Subject38}+tlrc[1]" \
		             ${Subject39} "$GroupDirectory/${Subject39}.results/stats.${Subject39}+tlrc[1]" \
		             ${Subject40} "$GroupDirectory/${Subject40}.results/stats.${Subject40}+tlrc[1]" 


			# Check if group results were created correctly
			if [ -e $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc.HEAD  ]; then

				rm temp/beta_subject*

				3dTcat -prefix temp/beta_subject1.nii $GroupDirectory/${Subject1}.results/stats.${Subject1}+tlrc[1] 
				3dTcat -prefix temp/beta_subject2.nii $GroupDirectory/${Subject2}.results/stats.${Subject2}+tlrc[1] 
				3dTcat -prefix temp/beta_subject3.nii $GroupDirectory/${Subject3}.results/stats.${Subject3}+tlrc[1] 
				3dTcat -prefix temp/beta_subject4.nii $GroupDirectory/${Subject4}.results/stats.${Subject4}+tlrc[1] 
				3dTcat -prefix temp/beta_subject5.nii $GroupDirectory/${Subject5}.results/stats.${Subject5}+tlrc[1] 
				3dTcat -prefix temp/beta_subject6.nii $GroupDirectory/${Subject6}.results/stats.${Subject6}+tlrc[1] 
				3dTcat -prefix temp/beta_subject7.nii $GroupDirectory/${Subject7}.results/stats.${Subject7}+tlrc[1] 
				3dTcat -prefix temp/beta_subject8.nii $GroupDirectory/${Subject8}.results/stats.${Subject8}+tlrc[1] 
				3dTcat -prefix temp/beta_subject9.nii $GroupDirectory/${Subject9}.results/stats.${Subject9}+tlrc[1] 
				3dTcat -prefix temp/beta_subject10.nii $GroupDirectory/${Subject10}.results/stats.${Subject10}+tlrc[1] 
				3dTcat -prefix temp/beta_subject11.nii $GroupDirectory/${Subject11}.results/stats.${Subject11}+tlrc[1] 
				3dTcat -prefix temp/beta_subject12.nii $GroupDirectory/${Subject12}.results/stats.${Subject12}+tlrc[1] 
				3dTcat -prefix temp/beta_subject13.nii $GroupDirectory/${Subject13}.results/stats.${Subject13}+tlrc[1] 
				3dTcat -prefix temp/beta_subject14.nii $GroupDirectory/${Subject14}.results/stats.${Subject14}+tlrc[1] 
				3dTcat -prefix temp/beta_subject15.nii $GroupDirectory/${Subject15}.results/stats.${Subject15}+tlrc[1] 
				3dTcat -prefix temp/beta_subject16.nii $GroupDirectory/${Subject16}.results/stats.${Subject16}+tlrc[1] 
				3dTcat -prefix temp/beta_subject17.nii $GroupDirectory/${Subject17}.results/stats.${Subject17}+tlrc[1] 
				3dTcat -prefix temp/beta_subject18.nii $GroupDirectory/${Subject18}.results/stats.${Subject18}+tlrc[1] 
				3dTcat -prefix temp/beta_subject19.nii $GroupDirectory/${Subject19}.results/stats.${Subject19}+tlrc[1] 
				3dTcat -prefix temp/beta_subject20.nii $GroupDirectory/${Subject20}.results/stats.${Subject20}+tlrc[1] 

				3dTcat -prefix temp/beta_subject21.nii $GroupDirectory/${Subject21}.results/stats.${Subject21}+tlrc[1] 
				3dTcat -prefix temp/beta_subject22.nii $GroupDirectory/${Subject22}.results/stats.${Subject22}+tlrc[1] 
				3dTcat -prefix temp/beta_subject23.nii $GroupDirectory/${Subject23}.results/stats.${Subject23}+tlrc[1] 
				3dTcat -prefix temp/beta_subject24.nii $GroupDirectory/${Subject24}.results/stats.${Subject24}+tlrc[1] 
				3dTcat -prefix temp/beta_subject25.nii $GroupDirectory/${Subject25}.results/stats.${Subject25}+tlrc[1] 
				3dTcat -prefix temp/beta_subject26.nii $GroupDirectory/${Subject26}.results/stats.${Subject26}+tlrc[1] 
				3dTcat -prefix temp/beta_subject27.nii $GroupDirectory/${Subject27}.results/stats.${Subject27}+tlrc[1] 
				3dTcat -prefix temp/beta_subject28.nii $GroupDirectory/${Subject28}.results/stats.${Subject28}+tlrc[1] 
				3dTcat -prefix temp/beta_subject29.nii $GroupDirectory/${Subject29}.results/stats.${Subject29}+tlrc[1] 
				3dTcat -prefix temp/beta_subject30.nii $GroupDirectory/${Subject30}.results/stats.${Subject30}+tlrc[1] 
				3dTcat -prefix temp/beta_subject31.nii $GroupDirectory/${Subject31}.results/stats.${Subject31}+tlrc[1] 
				3dTcat -prefix temp/beta_subject32.nii $GroupDirectory/${Subject32}.results/stats.${Subject32}+tlrc[1] 
				3dTcat -prefix temp/beta_subject33.nii $GroupDirectory/${Subject33}.results/stats.${Subject33}+tlrc[1] 
				3dTcat -prefix temp/beta_subject34.nii $GroupDirectory/${Subject34}.results/stats.${Subject34}+tlrc[1] 
				3dTcat -prefix temp/beta_subject35.nii $GroupDirectory/${Subject35}.results/stats.${Subject35}+tlrc[1] 
				3dTcat -prefix temp/beta_subject36.nii $GroupDirectory/${Subject36}.results/stats.${Subject36}+tlrc[1] 
				3dTcat -prefix temp/beta_subject37.nii $GroupDirectory/${Subject37}.results/stats.${Subject37}+tlrc[1] 
				3dTcat -prefix temp/beta_subject38.nii $GroupDirectory/${Subject38}.results/stats.${Subject38}+tlrc[1] 
				3dTcat -prefix temp/beta_subject39.nii $GroupDirectory/${Subject39}.results/stats.${Subject39}+tlrc[1] 
				3dTcat -prefix temp/beta_subject40.nii $GroupDirectory/${Subject40}.results/stats.${Subject40}+tlrc[1] 

				rm all_subjects.nii.gz

				fslmerge -t all_subjects.nii.gz \
				temp/beta_subject1.nii \
				temp/beta_subject2.nii \
				temp/beta_subject3.nii \
				temp/beta_subject4.nii \
				temp/beta_subject5.nii \
				temp/beta_subject6.nii \
				temp/beta_subject7.nii \
				temp/beta_subject8.nii \
				temp/beta_subject9.nii \
				temp/beta_subject10.nii \
				temp/beta_subject11.nii \
				temp/beta_subject12.nii \
				temp/beta_subject13.nii \
				temp/beta_subject14.nii \
				temp/beta_subject15.nii \
				temp/beta_subject16.nii \
				temp/beta_subject17.nii \
				temp/beta_subject18.nii \
				temp/beta_subject19.nii \
				temp/beta_subject20.nii \
				temp/beta_subject21.nii \
				temp/beta_subject22.nii \
				temp/beta_subject23.nii \
				temp/beta_subject24.nii \
				temp/beta_subject25.nii \
				temp/beta_subject26.nii \
				temp/beta_subject27.nii \
				temp/beta_subject28.nii \
				temp/beta_subject29.nii \
				temp/beta_subject30.nii \
				temp/beta_subject31.nii \
				temp/beta_subject32.nii \
				temp/beta_subject33.nii \
				temp/beta_subject34.nii \
				temp/beta_subject35.nii \
				temp/beta_subject36.nii \
				temp/beta_subject37.nii \
				temp/beta_subject38.nii \
				temp/beta_subject39.nii \
				temp/beta_subject40.nii

				rm detrended.nii.gz

				3dDetrend -polort 0 -prefix detrended.nii.gz all_subjects.nii.gz

				# Estimate smoothness
				3dFWHMx -mask $ResultsDirectory/group_mask.nii -input detrended.nii.gz
				Smoothnesses=`3dFWHMx -mask $ResultsDirectory/group_mask.nii -input detrended.nii.gz` 
	
				Values=()
		    	Value=${Smoothnesses[$((0))]}
			    Values+=($Value)

				XSmoothness=${Values[$((0))]}
				YSmoothness=${Values[$((1))]}
				ZSmoothness=${Values[$((2))]}

				echo -e "\n"
				echo "Mean x smoothness is $XSmoothness"
				echo "Mean y smoothness is $YSmoothness"
				echo "Mean z smoothness is $ZSmoothness"
				echo -e "\n"

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
				3dclust -1dindex 1 -1tindex 1 -dxyz=1 -1thresh $ClusterDefiningThreshold -1noneg  1.01 $ClusterExtentThreshold  $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc
	
				# Print clusters to text file
				3dclust -1dindex 1 -1tindex 1 -dxyz=1 -1thresh $ClusterDefiningThreshold -1noneg  1.01 $ClusterExtentThreshold  $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc > clustersizes.txt

				echo -e "\n"
	
	
			    String=CLUSTERS #Search for NO CLUSTERS
				File=clustersizes.txt
				if grep -q $String "$File"; then 
					echo "No significant group difference detected"
					FWE=$(echo "scale=3; $SignificantDifferences /  ${Comparisons}" | bc)
					echo "Current FWE is $FWE"
				else
					echo "Significant group difference detected!"
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

	echo "Current FWE is $FWE" > Results/results_${Study}_${Smoothing}_${DesignName}_OLS_${CDT}_groupresiduals.txt
	echo "Number of failed group masks is $NoGroupMask" >> Results/results_${Study}_${Smoothing}_${DesignName}_OLS_${CDT}_groupresiduals.txt
	echo "Number of failed group analyses is $NoGroupAnalysis" >> Results/results_${Study}_${Smoothing}_${DesignName}_OLS_${CDT}_groupresiduals.txt

done




