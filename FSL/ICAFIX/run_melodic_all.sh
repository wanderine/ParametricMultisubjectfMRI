#!/bin/bash

clear

source general_analysis_settings.sh

MaximumThreads=50 # Maximum number of CPU threads to use

Study=BeijingNew
Study_=Beijing

design_directory=/flush/andek/Data/fcon1000

for Smoothing in 1; do

	threads=0

	# Amount of smoothing (FWHM in mm)
	if [ "$Smoothing" -eq "1" ]; then
		SmoothingNew="set fmri(smooth) 4.0"
		SmoothingOutputNew=4mm
	elif [ "$Smoothing" -eq "2" ]; then
		SmoothingNew="set fmri(smooth) 6.0"
		SmoothingOutputNew=6mm
	elif [ "$Smoothing" -eq "3" ]; then
		SmoothingNew="set fmri(smooth) 8.0"
		SmoothingOutputNew=8mm
	elif [ "$Smoothing" -eq "4" ]; then
		SmoothingNew="set fmri(smooth) 10.0"
		SmoothingOutputNew=10mm
	fi

	# Loop over all subjects
	for i in /flush/andek/Data/fcon1000/${Study}/* ; do

	    # Check if fMRI data exists for this directory
	    if [ -e ${i}/func/rest.nii.gz ]; then

			# Go to current directory
			cd $i
			# Get subject name
		   	SubjectNew=${PWD##*/}
		    echo "Processing" $SubjectNew
			# Go back to original directory
			cd $design_directory

	        data_directory=/flush/andek/Data/fcon1000/${Study}/${SubjectNew}/func

	        #---------------
	        # Copy template design 
	        cp melodic_${Study_}.fsf ${data_directory}/

	        # Change smoothing output
	        sed -i "s/${SmoothingOutputOld}/${SmoothingOutputNew}/g" ${data_directory}/melodic_${Study_}.fsf

	        # Change subject name
	        sed -i "s/${SubjectOld}/${SubjectNew}/g" ${data_directory}/melodic_${Study_}.fsf

	        # Change smoothing
	        sed -i "s/${SmoothingOld}/${SmoothingNew}/g" ${data_directory}/melodic_${Study_}.fsf

	        #---------------
	        # Run analyses in parallel
	        feat ${data_directory}/melodic_${Study_}.fsf &
		    ((threads++))
	
			if [ $threads -eq "$MaximumThreads" ]; then
			    wait
	            threads=0
	        fi

	    else
			echo "This directory does not contain any fMRI data"
	    fi

	done
done

