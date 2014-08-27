#!/bin/bash

clear

source general_analysis_settings.sh

# Amount of smoothing (FWHM in mm)
SmoothingNew="set fmri(smooth) 14.0"

# Length of boxcar periods (seconds)
BoxcarOffNew="set fmri(off1) 30"
BoxcarOnNew="set fmri(on1) 30"

# Highpass filter cutoff (twice boxcar length)
HighPassNew="set fmri(paradigm_hp) 60"

# Nonlinear registration?
nonlinear=0

design_directory=/home/andek/Research_projects/RandomGroupAnalyses

threads=0

# Loop over all subjects
for i in /home/andek/Data/fcon1000/Cambridge/* ; do

    # Check if fMRI data exists for this directory
    if [ -e ${i}/func/rest.nii.gz ]; then

	# Go to current directory
	cd $i
	# Get subject name
    	SubjectNew=${PWD##*/}
        echo "Processing" $SubjectNew
	# Go back to original directory
	cd $design_directory

        data_directory=/home/andek/Data/fcon1000/Cambridge/${SubjectNew}/func

        #---------------
        # Copy template designs 
        cp ${design_directory}/Design_templates/* ${data_directory}/

        # Change subject name
        sed -i "s/${SubjectOld}/${SubjectNew}/g" ${data_directory}/GLM.fsf

        # Change smoothing
        sed -i "s/${SmoothingOld}/${SmoothingNew}/g" ${data_directory}/GLM.fsf

        # Change boxcar period time
        sed -i "s/${BoxcarOffOld}/${BoxcarOffNew}/g" ${data_directory}/GLM.fsf
        sed -i "s/${BoxcarOnOld}/${BoxcarOnNew}/g" ${data_directory}/GLM.fsf

        # Change highpass filter
        sed -i "s/${HighPassOld}/${HighPassNew}/g" ${data_directory}/GLM.fsf

        # Change number of TRs
        #sed -i "s/${TRs_MacKillop1_Old}/${TRs_MacKillop1_New}/g" ${data_directory}/GLM.fsf

        # Nonlinear registration
        #if [ "$nonlinear" == "1" ] ; then
        #    sed -i "s/${LinearRegistration}/${NonLinearRegistration}/g" ${data_directory}/GLM.fsf
        #fi

        # Change thresholding method
        #sed -i "s/${ThresholdMethodOld}/${ThresholdMethodNew}/g" ${data_directory}/GLM.fsf

        # Change threshold
        #sed -i "s/${ThresholdOld}/${ThresholdNew}/g" ${data_directory}/GLM.fsf
   
        # Confounds (large motions)
        #sed -i "s/${ConfoundsOld}/${ConfoundsNewMacKillop1}/g" ${data_directory}/GLM.fsf

        #---------------
        # Run analyses in parallel (max 6 threads in parallel)
        feat ${data_directory}/GLM.fsf &
	((threads++))
	
	if [ $threads -eq "6" ]; then
	    wait
            threads=0
        fi

        #date2=$(date +"%s")
        #diff=$(($date2-$date1))
        #echo "Processing took $(($diff)) seconds"

    else
	echo "This directory does not contain any fMRI data"
    fi

done
