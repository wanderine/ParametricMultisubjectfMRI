#!/bin/bash

clear

MaximumThreads=12 # Maximum number of CPU threads to use

#Study=OuluNew
#Study=CambridgeNew
Study=BeijingNew

design_directory=/data/andek/fcon1000

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
	for i in /data/andek/fcon1000/${Study}/* ; do

	    # Check if fMRI data exists for this directory
	    if [ -e ${i}/func/rest.nii.gz ]; then

			# Go to current directory
			cd $i
			# Get subject name
		   	SubjectNew=${PWD##*/}
		    echo "Processing" $SubjectNew
			# Go back to original directory
			cd $design_directory

	        #---------------
	        # Run FIX, to extract features and classify ICA components
			#/home/andek/Research_projects/FIX/fix1.065/fix /data/andek/fcon1000/${Study}/${SubjectNew}/func.ica/  /home/andek/Research_projects/FIX/fix1.065/training_files/Standard.RData 20 -m -A &

			#/home/andek/Research_projects/FIX/fix1.065/fix /data/andek/fcon1000/${Study}/${SubjectNew}/func.ica/  /data/andek/fcon1000/AndersOulu10Subjects.RData 20 -m -A &

			#/home/andek/Research_projects/FIX/fix1.065/fix /data/andek/fcon1000/${Study}/${SubjectNew}/func.ica/  /data/andek/fcon1000/AndersCambridge10Subjects.RData 20 -m -A &

			/home/andek/Research_projects/FIX/fix1.065/fix /data/andek/fcon1000/${Study}/${SubjectNew}/func.ica/  /data/andek/fcon1000/AndersBeijing10Subjects.RData 20 -m -A &
			
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

