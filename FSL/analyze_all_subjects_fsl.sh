#!/bin/bash

clear

source general_analysis_settings.sh

Study=Cambridge
#Study=Beijing

# Design
DesignNew=boxcar10

# Length of boxcar periods (seconds)
BoxcarOffNew="set fmri(off1) 10"
BoxcarOnNew="set fmri(on1) 10"

# Amount of smoothing (FWHM in mm)
SmoothingNew="set fmri(smooth) 4.0"
SmoothingOutputNew=4mm

# Highpass filter cutoff (twice boxcar length)
HighPassNew="set fmri(paradigm_hp) 20" #60 for 30 seconds on off, 20 for 10 seconds on off

design_directory=/home/andek/Research_projects/RandomGroupAnalyses

threads=0
MaximumThreads=8 # Maximum number of CPU threads to use

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

