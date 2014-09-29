#!/bin/bash

Study=Cambridge
Smoothing=4mm
Design=boxcar30

home_directory=/home/andek/Research_projects/RandomGroupAnalyses/

# Loop over all subjects
for i in /home/andek/Data/fcon1000/${Study}/* ; do

    # Check if fMRI data exists for this directory
    if [ -e ${i}/func/rest.nii.gz ]; then

        # Go to current directory
        cd $i
        # Get subject name
        Subject=${PWD##*/}
        echo "Looking at" $Subject
        # Go back to original directory
        cd $home_directory

		# Copy T1 and fMRI volumes to temporary directory
        cp Results/${Study}/${Smoothing}/${Design}/${Subject}.results/anat_final.${Subject}+tlrc.HEAD  temp/anat_final+tlrc.HEAD
        cp Results/${Study}/${Smoothing}/${Design}/${Subject}.results/anat_final.${Subject}+tlrc.BRIK  temp/anat_final+tlrc.BRIK

        cp Results/${Study}/${Smoothing}/${Design}/${Subject}.results/pb02.${Subject}.r01.volreg+tlrc.HEAD  temp/fMRI+tlrc.HEAD
        cp Results/${Study}/${Smoothing}/${Design}/${Subject}.results/pb02.${Subject}.r01.volreg+tlrc.BRIK  temp/fMRI+tlrc.BRIK

        afni -com 'OPEN_WINDOW A.axialimage'       \
             -com 'SWITCH_UNDERLAY anat_final+tlrc.HEAD' \
             -com 'SAVE_JPEG A.axialimage t1_axial.jpg' \
             -com 'SWITCH_UNDERLAY fMRI+tlrc.HEAD' \
             -com 'SWITCH_OVERLAY anat_final+tlrc.HEAD' \
             -com 'SEE_OVERLAY A.-' \
             -com 'SAVE_JPEG A.axialimage epi_axial.jpg' \
			 -com 'QUIT'                           \
			temp
         
        sleep 5

        mv t1_axial.jpg CheckEPIT1/t1_axial_${Subject}.jpg
        mv epi_axial.jpg CheckEPIT1/epi_axial_${Subject}.jpg

        cd temp
        rm *
        cd ..       

    fi

done

