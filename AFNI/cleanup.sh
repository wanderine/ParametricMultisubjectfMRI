#!/bin/bash

# Help script to get more free space

Study=Cambridge
#Study=Beijing

Design=regularEvent_REML

start_directory=/home/andek/Research_projects/RandomGroupAnalyses

for Smooth in 1 2
do

	if [ "$Smooth" -eq "1" ]; then
		Smoothing=4mm
	elif [ "$Smooth" -eq "2" ]; then
		Smoothing=6mm
	elif [ "$Smooth" -eq "3" ]; then
		Smoothing=8mm
	elif [ "$Smooth" -eq "4" ]; then
		Smoothing=10mm
	fi

	# Loop over all subjects
	for i in /home/andek/Data/fcon1000/${Study}/*; do 

    	# Check if fMRI data exists for this directory
	    if [ -e ${i}/func/rest.nii.gz ]; then

    	    # Go to current directory
	        cd $i
	        # Get subject name
	        Subject=${PWD##*/}
			echo "-------------------------------"	
	   		echo "Processing" $Subject
			echo "-------------------------------"	
	        # Go back to original directory
	        cd $start_directory

	        # Remove intermediate results
	        rm Results/${Study}/${Smoothing}/${Design}/${Subject}.results/pb*

	        rm Results/${Study}/${Smoothing}/${Design}/${Subject}.results/fitts*

	        rm Results/${Study}/${Smoothing}/${Design}/${Subject}.results/errts*

	        rm Results/${Study}/${Smoothing}/${Design}/${Subject}.results/all_runs*

	    else
		    echo "This directory does not contain any fMRI data!"
	    fi

	done

done



