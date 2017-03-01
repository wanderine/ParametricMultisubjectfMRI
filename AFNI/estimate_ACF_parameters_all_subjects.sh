#!/bin/bash

#Study=Cambridge
#Study=Beijing
Study=Oulu

Design=boxcar10_REML
#Design=boxcar30_REML
#Design=randomEvent_REML
#Design=regularEvent_REML

start_directory=/home/andek/Research_projects/RandomGroupAnalyses

for Smooth in 1 2 3 4
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

			cp $start_directory/estimate_ACF_parameters.sh /data/andek/Research_projects/RandomGroupAnalyses/Results/AFNI/${Study}/${Smoothing}/${Design}/${Subject}.results

			# Go to data directory
			cd 	/data/andek/Research_projects/RandomGroupAnalyses/Results/AFNI/${Study}/${Smoothing}/${Design}/${Subject}.results

			tcsh -xef estimate_ACF_parameters.sh $Subject

			rm estimate_ACF_parameters.sh

	        # Go back to original directory
	        cd $start_directory

	    else
		    echo "This directory does not contain any fMRI data!"
	    fi

	done

done


