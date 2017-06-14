#!/bin/bash

clear

Study=Beijing
#Study=Cambrige
#Study=Oulu

Comparison=1
# Read a pregenerated permutation
Randomized=`cat /home/andek67/Research_projects/RandomGroupAnalyses/${Study}_permutations/permutation${Comparison}.txt`

Subjects=()
subjectstring=${Randomized[$((0))]}
Subjects+=($subjectstring)

for D in 1 2 3 4 5 6
do
	if [ "$D" -eq "1" ] ; then
	    Design=boxcar10_REML
    elif [ "$D" -eq "2" ] ; then
        Design=boxcar30_REML
    elif [ "$D" -eq "3" ] ; then
        Design=regularEvent_REML
    elif [ "$D" -eq "4" ] ; then
        Design=randomEvent_REML
    elif [ "$D" -eq "5" ] ; then
        Design=differenceEvent_REML
    elif [ "$D" -eq "6" ] ; then
        Design=randomdifferenceEvent_REML
    fi

	for S in 1 2 3 4
	do

		if [ "$S" -eq "1" ] ; then
			Smoothing=4mm
		elif [ "$S" -eq "2" ] ; then
    		Smoothing=6mm
    	elif [ "$S" -eq "3" ] ; then
    		Smoothing=8mm
    	elif [ "$S" -eq "4" ] ; then
    		Smoothing=10mm
    	fi

		basedirectory=/flush/andek/Data/AFNI/${Study}/${Smoothing}/${Design}

		for v in {0..197}
		do
			Subject=${Subjects[$((${v}))]}

			echo "Working on subject $Subject "

			3dAFNItoNIFTI -prefix ${basedirectory}/${Subject}.results/stats.${Subject}.nii ${basedirectory}/${Subject}.results/stats.${Subject}+tlrc.HEAD

			3dAFNItoNIFTI -prefix ${basedirectory}/${Subject}.results/full_mask.${Subject}.nii ${basedirectory}/${Subject}.results/full_mask.${Subject}+tlrc.HEAD

		done	
	done
done


			
	


