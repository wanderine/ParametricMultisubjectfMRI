#!/bin/bash

Study=Cambridge
#Study=Beijing

Design=boxcar10_REML

# z-value of 2.326 corresponds to p = 0.01 (one sided)
# z-value of 3.086 corresponds to p = 0.001 (one sided)

ClusterDefiningThresholdP=0.01
ClusterDefiningThreshold=2.365
CDT=2.3

#ClusterDefiningThresholdP=0.001
#ClusterDefiningThreshold=3.175
#CDT=3.1

start_directory=/home/andek/Research_projects/RandomGroupAnalyses

for Cluster in 1 2
do

	if [ "$Cluster" -eq "1" ]; then
		ClusterDefiningThresholdP=0.01
		ClusterDefiningThreshold=2.365
		CDT=2.3
	elif [ "$Cluster" -eq "2" ]; then
		ClusterDefiningThresholdP=0.001
		ClusterDefiningThreshold=3.175
		CDT=3.1	
	fi

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
		elif [ "$Smooth" -eq "5" ]; then
			Smoothing=12mm
		elif [ "$Smooth" -eq "6" ]; then
			Smoothing=14mm
		elif [ "$Smooth" -eq "7" ]; then
			Smoothing=16mm
		fi

		Subjects=0.0
		Significant=0.0
		FWE=0.0
		one=1.0

		# Loop over all subjects
		for i in /home/andek/Data/fcon1000/${Study}/*; do 

    		# Check if fMRI data exists for this directory
		    if [ -e ${i}/func/rest.nii.gz ]; then
	
				Subjects=$(echo "scale=3;$Subjects + $one" | bc)

    		    # Go to current directory
		        cd $i
		        # Get subject name
		        Subject=${PWD##*/}
				echo "-------------------------------"	
		   		echo "Processing" $Subject " " $Subjects
				echo "-------------------------------"	
		        # Go back to original directory
		        cd $start_directory

				# Check for significant clusters, calculate cluster size required
				cat Results/${Study}/${Smoothing}/${Design}/${Subject}.results/blur_est.${Subject}.1D
				fxyz=`cat Results/${Study}/${Smoothing}/${Design}/${Subject}.results/blur_est.${Subject}.1D`
				temp=()
				temp2=${fxyz[$((0))]}
				temp+=($temp2)
				xsmoothness=${temp[$((14))]}
				ysmoothness=${temp[$((15))]}
				zsmoothness=${temp[$((16))]}
				echo "X smoothness is $xsmoothness" 
				echo "Y smoothness is $ysmoothness" 
				echo "Z smoothness is $zsmoothness" 
				3dClustSim -mask Results/${Study}/${Smoothing}/${Design}/${Subject}.results/full_mask.${Subject}+tlrc -fwhmxyz $xsmoothness $ysmoothness $zsmoothness  -athr 0.05 -pthr $ClusterDefiningThresholdP -nodec > clusterthreshold.txt 

				echo -e "\n"

				# Get cluster threshold as the last word/number
				ClusterExtentThreshold=`less clusterthreshold.txt | awk 'END { print $NF }'`
	
				echo -e "\n"
				echo "Cluster threshold is $ClusterExtentThreshold"
				echo -e "\n"

				# Mask activity map (the t-score, sub-brik 2)
				rm activation_masked.nii
				3dcalc -a "Results/${Study}/${Smoothing}/${Design}/${Subject}.results/stats.${Subject}_REML+tlrc[2]" -b "Results/${Study}/${Smoothing}/${Design}/${Subject}.results/full_mask.${Subject}+tlrc" -expr 'step(b)*a' -prefix activation_masked.nii

				#3dAFNItoNIFTI -prefix $start_directory/activation.nii Results/${Study}/${Smoothing}/${Design}/${Subject}.results/stats.${Subject}_REML+tlrc

				# Apply cluster extent threshold to activity map (t-scores)
				#3dclust -1dindex 2 -1tindex 2 -1noneg -1thresh $ClusterDefiningThreshold -dxyz=1 1.01 $ClusterExtentThreshold Results/${Study}/${Smoothing}/${Design}/${Subject}.results/stats.${Subject}_REML+tlrc 

				# Apply cluster extent threshold to activity map (t-scores)
				#3dclust -1dindex 2 -1tindex 2 -1noneg -1thresh $ClusterDefiningThreshold -dxyz=1 1.01 $ClusterExtentThreshold Results/${Study}/${Smoothing}/${Design}/${Subject}.results/stats.${Subject}_REML+tlrc > clustersizes.txt

				# Apply cluster extent threshold to activity map (t-scores)
				3dclust -1dindex 0 -1tindex 0 -1noneg -1thresh $ClusterDefiningThreshold -dxyz=1 1.01 1 activation_masked.nii

				# Apply cluster extent threshold to activity map (t-scores)
				3dclust -1dindex 0 -1tindex 0 -1noneg -1thresh $ClusterDefiningThreshold -dxyz=1 1.01 $ClusterExtentThreshold activation_masked.nii > clustersizes.txt

				echo -e "\n"
		
			    String=CLUSTERS #Search for NO CLUSTERS
				File=clustersizes.txt
				if grep -q $String "$File"; then 
					echo "No significant activation detected"
					FWE=$(echo "scale=3; $Significant /  ${Subjects}" | bc)
					echo "Current FWE is $FWE"
				else
					echo "Significant activation detected!"
					Significant=$(echo "scale=3;$Significant + $one" | bc)
					FWE=$(echo "scale=3; $Significant /  ${Subjects}" | bc)
					echo "Current FWE is $FWE"
				fi
				echo -e "\n"

		    else
			    echo "This directory does not contain any fMRI data!"
		    fi

		done

		echo "Current FWE is $FWE" > Results/results_singlesubject_${Study}_${Smoothing}_${Design}_${CDT}.txt

	done
	
done



