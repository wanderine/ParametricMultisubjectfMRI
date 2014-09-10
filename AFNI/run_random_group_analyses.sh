#!/bin/bash

# Set variables

Smoothing=4mm
Design=boxcar30
Study=Cambridge
#Study=Beijing

GroupDirectory=/home/andek/Research_projects/RandomGroupAnalyses/Results/${Study}/${Smoothing}/${Design}
ResultsDirectory=/home/andek/Research_projects/RandomGroupAnalyses/Results/${Study}/${Smoothing}/${Design}/GroupAnalyses

NumberOfSubjects=40.0

# Loop over many random group comparisons
for Comparison in {1..1}
do
	echo "Starting random group comparison $Comparison !"

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

	echo ${Subject2}
	
	#echo "$GroupDirectory/${Subject1}.results/stats.${Subject1}+tlrc[0]"

	3dttest++ -prefix $ResultsDirectory/4mm_boxcar30_${Comparison} -AminusB                 \
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
             ${Subject40} "$GroupDirectory/${Subject40}.results/stats.${Subject40}+tlrc[1]" \

	# Calculate mean smoothness
	
	AllSmoothnesses=()
	i=0

	# Read all smoothness estimations from file
	for subject in $(seq 0 $(($thirtynine)) )	
	do
		smoothnesses=`cat $GroupDirectory/${Subjects[$((subject))]}.results/blur.errts.1D`
		smoothnessstring=${smoothnesses[$(($i))]}
		AllSmoothnesses+=($smoothnessstring)
	done

	three=3

	# Calculate mean x smoothness
	XSmoothness=0.0
	index=0
	for subject in $(seq 0 $(($thirtynine)) )
	#for subject in $(seq 0 $(($two)) )		
	do
		XSmoothness=$(echo $XSmoothness + ${AllSmoothnesses[$(($index))]} | bc)
		index=$((index + three))
	done
	XSmoothness=$(echo "scale=3;$XSmoothness /  ${NumberOfSubjects}" | bc)

	# Calculate mean y smoothness
	YSmoothness=0.0
	index=1
	for subject in $(seq 0 $(($thirtynine)) )
	do
		YSmoothness=$(echo $YSmoothness + ${AllSmoothnesses[$(($index))]} | bc)
		index=$((index + three))
	done
	YSmoothness=$(echo "scale=3; $YSmoothness /  ${NumberOfSubjects}" | bc)

	# Calculate mean z smoothness
	ZSmoothness=0.0
	index=2
	for subject in $(seq 0 $(($thirtynine)) )
	do
		ZSmoothness=$(echo $ZSmoothness + ${AllSmoothnesses[$(($index))]} | bc)
		index=$((index + three))
	done
	ZSmoothness=$(echo "scale=3; $ZSmoothness /  ${NumberOfSubjects}" | bc)

	#echo ${AllSmoothnesses[*]}

	echo "Mean x smoothness is $XSmoothness"
	echo "Mean y smoothness is $YSmoothness"
	echo "Mean z smoothness is $ZSmoothness"

	# Now run cluster simulation to get p-values for clusters
	3dClustSim -fwhmxyz ${XSmoothness} ${YSmoothness} ${ZSmoothness} -athr 0.05 -nxyz 54 64 50 -dxyz 3 3 3 -pthr 0.01 -niml -prefix kalle

	#3dClustCount -final $ResultsDirectory/4mm_boxcar30_${Comparison}+tlrc

	# Finally apply same voxel threshold to statistical map, and calculate the size of the largest cluster

    # Compare the size of the largest cluster to the threshold from 3dClustSim, to see if the cluster is significantfsl &
	
3drefit -atrstring AFNI_CLUSTSIM_NN1 file:kalle.NN1.niml $ResultsDirectory/4mm_boxcar30_${Comparison}+tlrc
 #-atrstring AFNI_CLUSTSIM_MASK file:kalle.mask \
 

done

