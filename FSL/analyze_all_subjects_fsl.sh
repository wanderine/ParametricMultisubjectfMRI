#!/bin/bash

clear

source general_analysis_settings.sh

MaximumThreads=8 # Maximum number of CPU threads to use

#Study=Cambridge
Study=Beijing

# Design
DesignNew=boxcar10

# Length of boxcar periods (seconds)
BoxcarOffNew="set fmri(off1) 10"
BoxcarOnNew="set fmri(on1) 10"

# Highpass filter cutoff (twice boxcar length)
HighPassNew="set fmri(paradigm_hp) 20" #60 for 30 seconds on off, 20 for 10 seconds on off

design_directory=/home/andek/Research_projects/RandomGroupAnalyses

for Smoothing in 1 2 3 4 ; do

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
	for i in /home/andek/Data/fcon1000/${Study}/* ; do

	    # Check if fMRI data exists for this directory
	    if [ -e ${i}/func/rest.nii.gz ]; then

			# Go to current directory
			cd $i
			# Get subject name
		   	SubjectNew=${PWD##*/}
		    echo "Processing" $SubjectNew
			# Go back to original directory
			cd $design_directory

	        data_directory=/home/andek/Data/fcon1000/${Study}/${SubjectNew}/func

	        #---------------
	        # Copy template design 
	        cp ${design_directory}/Design_templates/GLM${Study}.fsf ${data_directory}/

	        # Change smoothing output
	        sed -i "s/${SmoothingOutputOld}/${SmoothingOutputNew}/g" ${data_directory}/GLM${Study}.fsf

	        # Change design output
	        sed -i "s/${DesignOld}/${DesignNew}/g" ${data_directory}/GLM${Study}.fsf

	        # Change subject name
	        sed -i "s/${SubjectOld}/${SubjectNew}/g" ${data_directory}/GLM${Study}.fsf

	        # Change smoothing
	        sed -i "s/${SmoothingOld}/${SmoothingNew}/g" ${data_directory}/GLM${Study}.fsf

	        # Change boxcar period time
	        sed -i "s/${BoxcarOffOld}/${BoxcarOffNew}/g" ${data_directory}/GLM${Study}.fsf
	        sed -i "s/${BoxcarOnOld}/${BoxcarOnNew}/g" ${data_directory}/GLM${Study}.fsf

	        # Change highpass filter
	        sed -i "s/${HighPassOld}/${HighPassNew}/g" ${data_directory}/GLM${Study}.fsf

	        #---------------
	        # Run analyses in parallel
	        feat ${data_directory}/GLM${Study}.fsf &
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

