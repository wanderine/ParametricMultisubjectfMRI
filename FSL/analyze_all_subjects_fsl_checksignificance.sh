#!/bin/bash

# A help script to check for significance at the single subject level, for different cluster defining thresholds

clear

#Study=Cambridge
Study=Beijing

# Design
Design=boxcar30

# Set cluster defining threshold
CDT=3.1

# Loop over different smoothing levels
for SmoothingLevel in 1 2 3 4
do
	date1=$(date +"%s")

	if [ "$SmoothingLevel" -eq "1" ] ; then
		Smoothing=4mm
	elif [ "$SmoothingLevel" -eq "2" ] ; then
		Smoothing=6mm
	elif [ "$SmoothingLevel" -eq "3" ] ; then
		Smoothing=8mm
	elif [ "$SmoothingLevel" -eq "4" ] ; then
		Smoothing=10mm
	elif [ "$SmoothingLevel" -eq "5" ] ; then
		Smoothing=12mm
	elif [ "$SmoothingLevel" -eq "6" ] ; then
		Smoothing=14mm
	elif [ "$SmoothingLevel" -eq "7" ] ; then
		Smoothing=16mm
	fi

	results_directory=/home/andek/Research_projects/RandomGroupAnalyses/Results/${Study}/${Smoothing}/${Design}

	Significant=0
	Subjects=0

	# Loop over all subjects
	for i in /home/andek/Data/fcon1000/${Study}/* ; do

	    # Check if fMRI data exists for this directory
	    if [ -e ${i}/func/rest.nii.gz ]; then

			((Subjects++))

			# Go to current directory
			cd $i
			# Get subject name
		   	Subject=${PWD##*/}
		    #echo "Processing" $Subject
			# Go back to original directory
			cd $design_directory

			# Get smoothness and number of voxels from smoothness estimate
			text=`cat ${results_directory}/${Subject}.feat/stats/smoothness`
			temp=${text[$((0))]}
			values=()
			values+=($temp)
			SMOOTHNESS=${values[$((1))]}
			VOXELS=${values[$((3))]}

			#cat ${results_directory}/${Subject}.feat/stats/smoothness
			#echo $SMOOTHNESS
			#echo $VOXELS			

			# Do new masking
			fslmaths ${results_directory}/${Subject}.feat/stats/zstat1 -mas ${results_directory}/${Subject}.feat/mask ${results_directory}/${Subject}.feat/thresh_zstat1_${CDT}

			# Apply new clustering
			cluster -i ${results_directory}/${Subject}.feat/thresh_zstat1_${CDT} -c ${results_directory}/${Subject}.feat/stats/cope1 -t ${CDT} -p 0.05 -d ${SMOOTHNESS} --volume=${VOXELS} --othresh=${results_directory}/${Subject}.feat/thresh_zstat1_${CDT} -o ${results_directory}/${Subject}.feat/cluster_mask_zstat1_${CDT} --connectivity=26  --olmax=${results_directory}/${Subject}.feat/lmax_zstat1_${CDT}.txt --scalarname=Z > ${results_directory}/${Subject}.feat/cluster_zstat1_${CDT}.txt

			# Check if there are any significant clusters
			
			# Count number of lines in cluster report files

		    Lines=`cat ${results_directory}/${Subject}.feat/cluster_zstat1_${CDT}.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then				
				((Significant++))
		    fi

	    fi

	done

	echo "Out of $Subjects analyses for $Smoothing smoothing, significant activation was detected $Significant times !"

	echo "Out of $Subjects analyses, significant activation was detected $Significant times !" > /home/andek/Research_projects/RandomGroupAnalyses/Results/results_fsl_singlesubject_${Study}_${Design}_${Smoothing}_${CDT}.txt

done

