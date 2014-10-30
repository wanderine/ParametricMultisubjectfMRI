#!/bin/bash

# Set variables

clear

# Use z-scores instead of t-scores, to not change threshold for different group sizes

# z-value of 2.326 corresponds to p = 0.01 (one sided)
# z-value of 3.086 corresponds to p = 0.001 (one sided)

#ClusterDefiningThresholdP=0.01
#ClusterDefiningThreshold=2.326
#CDT=2.3

ClusterDefiningThresholdP=0.001
ClusterDefiningThreshold=3.086
CDT=3.1

Design=boxcar30_REML
DesignName=boxcar30

Study=Cambridge
#Study=Beijing

seventynine=79
NumberOfSubjects=80.0

NoGroupMask=0
NoGroupAnalysis=0

# Loop over different smoothing levels
for SmoothingLevel in 1 2 3 4 5 6 7
#for SmoothingLevel in 1
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

	touch SmoothnessEstimates/xsmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize40.txt 
	touch SmoothnessEstimates/ysmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize40.txt 
	touch SmoothnessEstimates/zsmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize40.txt 

	# Delete old results
	rm $ResultsDirectory/*
	
	rm /home/andek/.afni.log
	
	Comparisons=0.0
	SignificantDifferences=0.0
	one=1.0
	FWE=0.0

	# Loop over many random group comparisons
	for Comparison in {1..1000}
	#for Comparison in {1..6}
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

		# Put the first 80 subjects into Subjects
		
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

		Subject41=${Subjects[$((40))]}
		Subject42=${Subjects[$((41))]}
		Subject43=${Subjects[$((42))]}
		Subject44=${Subjects[$((43))]}
		Subject45=${Subjects[$((44))]}
		Subject46=${Subjects[$((45))]}
		Subject47=${Subjects[$((46))]}
		Subject48=${Subjects[$((47))]}
		Subject49=${Subjects[$((48))]}
		Subject50=${Subjects[$((49))]}
		Subject51=${Subjects[$((50))]}
		Subject52=${Subjects[$((51))]}
		Subject53=${Subjects[$((52))]}
		Subject54=${Subjects[$((53))]}
		Subject55=${Subjects[$((54))]}
		Subject56=${Subjects[$((55))]}
		Subject57=${Subjects[$((56))]}
		Subject58=${Subjects[$((57))]}
		Subject59=${Subjects[$((58))]}
		Subject60=${Subjects[$((59))]}
		Subject61=${Subjects[$((60))]}
		Subject62=${Subjects[$((61))]}
		Subject63=${Subjects[$((62))]}
		Subject64=${Subjects[$((63))]}
		Subject65=${Subjects[$((64))]}
		Subject66=${Subjects[$((65))]}
		Subject67=${Subjects[$((66))]}
		Subject68=${Subjects[$((67))]}
		Subject69=${Subjects[$((68))]}
		Subject70=${Subjects[$((69))]}
		Subject71=${Subjects[$((70))]}
		Subject72=${Subjects[$((71))]}
		Subject73=${Subjects[$((72))]}
		Subject74=${Subjects[$((73))]}
		Subject75=${Subjects[$((74))]}
		Subject76=${Subjects[$((75))]}
		Subject77=${Subjects[$((76))]}
		Subject78=${Subjects[$((77))]}
		Subject79=${Subjects[$((78))]}
		Subject80=${Subjects[$((79))]}

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
	            $GroupDirectory/${Subject40}.results/mask_group+tlrc.HEAD \
				$GroupDirectory/${Subject41}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject42}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject43}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject44}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject45}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject46}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject47}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject48}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject49}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject50}.results/mask_group+tlrc.HEAD \
    	        $GroupDirectory/${Subject51}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject52}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject53}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject54}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject55}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject56}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject57}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject58}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject59}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject60}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject61}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject62}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject63}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject64}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject65}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject66}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject67}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject68}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject69}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject70}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject71}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject72}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject73}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject74}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject75}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject76}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject77}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject78}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject79}.results/mask_group+tlrc.HEAD \
	            $GroupDirectory/${Subject80}.results/mask_group+tlrc.HEAD 

		# Check if group mask was created correctly
	    if [ -e $ResultsDirectory/group_mask.nii  ]; then

			# Run a two-sample t-test, transform to z-values

			3dttest++ -toz -mask $ResultsDirectory/group_mask.nii -prefix $ResultsDirectory/${Smoothing}_${Design}_${Comparison} -AminusB                 \
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
		             ${Subject20} "$GroupDirectory/${Subject20}.results/stats.${Subject20}+tlrc[1]" \
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
		             ${Subject40} "$GroupDirectory/${Subject40}.results/stats.${Subject40}+tlrc[1]" \
				-setB Group2                                               \
		             ${Subject41} "$GroupDirectory/${Subject41}.results/stats.${Subject41}+tlrc[1]" \
		             ${Subject42} "$GroupDirectory/${Subject42}.results/stats.${Subject42}+tlrc[1]" \
		             ${Subject43} "$GroupDirectory/${Subject43}.results/stats.${Subject43}+tlrc[1]" \
		             ${Subject44} "$GroupDirectory/${Subject44}.results/stats.${Subject44}+tlrc[1]" \
		             ${Subject45} "$GroupDirectory/${Subject45}.results/stats.${Subject45}+tlrc[1]" \
		             ${Subject46} "$GroupDirectory/${Subject46}.results/stats.${Subject46}+tlrc[1]" \
		             ${Subject47} "$GroupDirectory/${Subject47}.results/stats.${Subject47}+tlrc[1]" \
		             ${Subject48} "$GroupDirectory/${Subject48}.results/stats.${Subject48}+tlrc[1]" \
		             ${Subject49} "$GroupDirectory/${Subject49}.results/stats.${Subject49}+tlrc[1]" \
		             ${Subject50} "$GroupDirectory/${Subject50}.results/stats.${Subject50}+tlrc[1]" \
		             ${Subject51} "$GroupDirectory/${Subject51}.results/stats.${Subject51}+tlrc[1]" \
		             ${Subject52} "$GroupDirectory/${Subject52}.results/stats.${Subject52}+tlrc[1]" \
		             ${Subject53} "$GroupDirectory/${Subject53}.results/stats.${Subject53}+tlrc[1]" \
		             ${Subject54} "$GroupDirectory/${Subject54}.results/stats.${Subject54}+tlrc[1]" \
		             ${Subject55} "$GroupDirectory/${Subject55}.results/stats.${Subject55}+tlrc[1]" \
		             ${Subject56} "$GroupDirectory/${Subject56}.results/stats.${Subject56}+tlrc[1]" \
		             ${Subject57} "$GroupDirectory/${Subject57}.results/stats.${Subject57}+tlrc[1]" \
		             ${Subject58} "$GroupDirectory/${Subject58}.results/stats.${Subject58}+tlrc[1]" \
		             ${Subject59} "$GroupDirectory/${Subject59}.results/stats.${Subject59}+tlrc[1]" \
		             ${Subject60} "$GroupDirectory/${Subject60}.results/stats.${Subject60}+tlrc[1]" \
		             ${Subject61} "$GroupDirectory/${Subject61}.results/stats.${Subject61}+tlrc[1]" \
		             ${Subject62} "$GroupDirectory/${Subject62}.results/stats.${Subject62}+tlrc[1]" \
		             ${Subject63} "$GroupDirectory/${Subject63}.results/stats.${Subject63}+tlrc[1]" \
		             ${Subject64} "$GroupDirectory/${Subject64}.results/stats.${Subject64}+tlrc[1]" \
		             ${Subject65} "$GroupDirectory/${Subject65}.results/stats.${Subject65}+tlrc[1]" \
		             ${Subject66} "$GroupDirectory/${Subject66}.results/stats.${Subject66}+tlrc[1]" \
		             ${Subject67} "$GroupDirectory/${Subject67}.results/stats.${Subject67}+tlrc[1]" \
		             ${Subject68} "$GroupDirectory/${Subject68}.results/stats.${Subject68}+tlrc[1]" \
    		         ${Subject69} "$GroupDirectory/${Subject69}.results/stats.${Subject69}+tlrc[1]" \
		             ${Subject70} "$GroupDirectory/${Subject70}.results/stats.${Subject70}+tlrc[1]" \
		             ${Subject71} "$GroupDirectory/${Subject71}.results/stats.${Subject71}+tlrc[1]" \
		             ${Subject72} "$GroupDirectory/${Subject72}.results/stats.${Subject72}+tlrc[1]" \
		             ${Subject73} "$GroupDirectory/${Subject73}.results/stats.${Subject73}+tlrc[1]" \
		             ${Subject74} "$GroupDirectory/${Subject74}.results/stats.${Subject74}+tlrc[1]" \
		             ${Subject75} "$GroupDirectory/${Subject75}.results/stats.${Subject75}+tlrc[1]" \
		             ${Subject76} "$GroupDirectory/${Subject76}.results/stats.${Subject76}+tlrc[1]" \
		             ${Subject77} "$GroupDirectory/${Subject77}.results/stats.${Subject77}+tlrc[1]" \
		             ${Subject78} "$GroupDirectory/${Subject78}.results/stats.${Subject78}+tlrc[1]" \
		             ${Subject79} "$GroupDirectory/${Subject79}.results/stats.${Subject79}+tlrc[1]" \
		             ${Subject80} "$GroupDirectory/${Subject80}.results/stats.${Subject80}+tlrc[1]" 


			# Check if group results were created correctly
			if [ -e $ResultsDirectory/${Smoothing}_${Design}_${Comparison}+tlrc.HEAD  ]; then

				# Calculate mean smoothness
	
				AllSmoothnesses=()
				i=0

				# Read all smoothness estimations from file
				for subject in $(seq 0 $(($seventynine)) )	
				do
					smoothnesses=`cat $GroupDirectory/${Subjects[$((subject))]}.results/blur.errts.1D`
					smoothnessstring=${smoothnesses[$(($i))]}
					AllSmoothnesses+=($smoothnessstring)
				done

				three=3

				# Calculate mean x smoothness
				XSmoothness=0.0
				index=0
				for subject in $(seq 0 $(($seventynine)) )
				do
					XSmoothness=$(echo $XSmoothness + ${AllSmoothnesses[$(($index))]} | bc)
					index=$((index + three))
				done
				XSmoothness=$(echo "scale=3;$XSmoothness /  ${NumberOfSubjects}" | bc)

				# Calculate mean y smoothness
				YSmoothness=0.0
				index=1
				for subject in $(seq 0 $(($seventynine)) )
				do
					YSmoothness=$(echo $YSmoothness + ${AllSmoothnesses[$(($index))]} | bc)
					index=$((index + three))
				done
				YSmoothness=$(echo "scale=3; $YSmoothness /  ${NumberOfSubjects}" | bc)

				# Calculate mean z smoothness
				ZSmoothness=0.0
				index=2
				for subject in $(seq 0 $(($seventynine)) )
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

				echo "$XSmoothness" >> SmoothnessEstimates/xsmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize40.txt 
				echo "$YSmoothness" >> SmoothnessEstimates/ysmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize40.txt 
				echo "$ZSmoothness" >> SmoothnessEstimates/zsmoothnesses_twosamplettest_${Study}_${Smoothing}_${DesignName}_groupsize40.txt 

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

	echo "Current FWE is $FWE" > Results/results_twosamplettest_${Study}_${Smoothing}_${DesignName}_OLS_${CDT}_groupsize40.txt
	echo "Number of failed group masks is $NoGroupMask" >> Results/results_twosamplettest_${Study}_${Smoothing}_${DesignName}_OLS_${CDT}_groupsize40.txt
	echo "Number of failed group analyses is $NoGroupAnalysis" >> Results/results_twosamplettest_${Study}_${Smoothing}_${DesignName}_OLS_${CDT}_groupsize40.txt

done




