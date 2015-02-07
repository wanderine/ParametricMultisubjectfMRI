#!/bin/bash

clear

#Study=Cambridge
Study=Beijing

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

	# Loop over different cluster defining thresholds
	for C in 1 2
	do

		if [ "$C" -eq "1" ] ; then
			ClusterDefiningThreshold=2.3
		elif [ "$C" -eq "2" ] ; then
			ClusterDefiningThreshold=3.1
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
	
				#-------------------------------------
				# Put data into one nifti file
				#-------------------------------------

				rm all_subjects.nii*
	
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
				Results/${Study}/${Smoothing}/${Design}/${Subject40}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject41}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject42}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject43}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject44}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject45}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject46}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject47}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject48}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject49}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject50}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject51}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject52}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject53}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject54}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject55}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject56}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject57}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject58}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject59}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject60}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject61}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject62}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject63}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject64}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject65}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject66}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject67}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject68}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject69}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject70}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject71}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject72}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject73}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject74}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject75}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject76}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject77}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject78}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject79}.feat/reg_standard/stats/cope1.nii.gz \
				Results/${Study}/${Smoothing}/${Design}/${Subject80}.feat/reg_standard/stats/cope1.nii.gz 

				#-------------------------------------------------------
				# Run group analysis using permutation test in BROCCOLI
				#-------------------------------------------------------

				./RandomiseGroupLevel all_subjects.nii.gz -design design_matrix_twosamplettest_groupsize40.mat -contrasts contrasts_twosamplettest_groupsize40.con -mask MNI152_T1_2mm_brain_mask.nii.gz -permutations 1000 -quiet -cdt ${ClusterDefiningThreshold} -permutationfile permutations_twosamplettest_groupsize40.txt > log.txt

				# Equivalent call to randomise
				#time randomise -i all_subjects.nii.gz -o test -d design_matrix_twosamplettest_groupsize40_fsl.mat -t contrasts_twosamplettest_groupsize40_fsl.con -P -c ${ClusterDefiningThreshold} -n 1001 -m MNI152_T1_2mm_brain_mask.nii.gz

				# Count number of lines in log
	    		Lines=`cat log.txt | wc -l`
	    		if [ "$Lines" -gt "2" ] ; then
					((SignificantDifferences++))
	    		    echo "Significant group difference detected!"
				fi
	
				echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !"

			done

			echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !" > /home/andek/Research_projects/RandomGroupAnalyses/Results/results_broccoli_twosamplettest_${Study}_${Design}_${Smoothing}_perm_${ClusterDefiningThreshold}_groupsize40.txt

		done
	done
done















