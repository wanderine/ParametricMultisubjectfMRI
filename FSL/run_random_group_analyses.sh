#!/bin/bash

clear

SignificantDifferences=0
Smoothing=4mm
Design=boxcar30

threads=0
MaximumThreads=8 # maximum number of CPU threads to use

# Remove old results
rm -rf /home/andek/Research_projects/RandomGroupAnalyses/Results/${Smoothing}/${Design}/Group*

# Threshold type
# 1 = uncorrected, 2 = voxel corrected, 3 = cluster corrected
ThresholdMethodOld="set fmri(thresh) 3"
ThresholdMethodNew="set fmri(thresh) 3"

# Cluster defining threshold
ClusterDefiningThresholdOld="set fmri(z_thresh) 2.3"
ClusterDefiningThresholdNew="set fmri(z_thresh) 2.3"

# Set corrected threshold
ThresholdOld='0.05'
ThresholdNew='0.05'

# Outlier detection
OutlierOld="set fmri(robust_yn) 0"
OutlierNew="set fmri(robust_yn) 0"

# Loop over many random group comparisons
for Comparison in {1..8000}
do
	echo "Starting random group comparison $Comparison !"

	# Make a random permutation of all subjects
	Randomized=`shuf /home/andek/Data/fcon1000/Cambridge/Cambridge_Buckner_subjects.txt`

	#echo ${Randomized[@]}

	thirtynine=39
	GroupSize=20

	Subjects=()

	# Put the first 40 subjects into Subjects
	for subject in $(seq 0 $(($thirtynine)) )	
	do
    	subjectstring=${Randomized[$(($subject))]}
	    Subjects+=($subjectstring)
	done

	#echo ${Subjects[10]}

	#-------------------------------------

	FirstSubjectGroup1=1
	FirstSubjectGroup2=21 # change 

	#FirstRegressorGroup1="set fmri(evg1.1) 1"
	#FirstRegressorGroup2="set fmri(evg20.1) 0" # change 

	#SecondRegressorGroup1="set fmri(evg1.2) 0"
	#SecondRegressorGroup2="set fmri(evg20.2) 1" # change 

	#FirstGroupMemberGroup1="set fmri(groupmem.1) 1"
	#FirstGroupMemberGroup2="set fmri(groupmem.20) 2" # change 

	# Fixed or random effect, 2 = mixed, 3 = fixed
	EffectOld="set fmri(mixed_yn) 2"
	EffectNew="set fmri(mixed_yn) 2"

	StartText="set fmri(copeinput.1) 1"

	# Number of subjects
	NumberOfSubjectsOld="set fmri(npts) 1"
	NumberOfSubjectsNew="set fmri(npts) 40" # change

	NumberOfFirstLevelAnalysesOld="set fmri(multiple) 1"
	NumberOfFirstLevelAnalysesNew="set fmri(multiple) 40" # change (total number of subjects)

	NumberOfSubjectsDiffGroup1=19 # change   (length of Subjects arrays - 1, since there is one regressor and one group member in the fsf files)
	NumberOfSubjectsDiffGroup2=19 # change  (length of Subjects arrays - 1, since there is one regressor and one group member in the fsf files) 

	design_directory=/home/andek/Research_projects/RandomGroupAnalyses/Design_templates
	data_directory=/home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30

	# Remove old designs
	#rm ${data_directory}/designs/*

	# Copy template designs 
	cp ${design_directory}/GroupComparison.fsf ${data_directory}/designs$threads/

	#-----------------------------------------

	# Change effect type

	sed -i "s/${EffectOld}/${EffectNew}/g" ${data_directory}/designs${threads}/GroupComparison.fsf

	#-----------------------------------------

	# Change thresholding type

	sed -i "s/${ThresholdMethodOld}/${ThresholdMethodNew}/g" ${data_directory}/designs${threads}/GroupComparison.fsf

	#-----------------------------------------

	# Change number of subjects

	sed -i "s/${NumberOfSubjectsOld}/${NumberOfSubjectsNewMacKillop}/g" ${data_directory}/designs${threads}/GroupComparison.fsf

	#-----------------------------------------
	# Change cluster defining threshold

	sed -i "s/${ClusterDefiningThresholdOld}/${ClusterDefiningThresholdNew}/g" ${data_directory}/designs${threads}/GroupComparison.fsf

	#-----------------------------------------

	# Change threshold

	sed -i "s/${ThresholdOld}/${ThresholdNew}/g" ${data_directory}/designs${threads}/GroupComparison.fsf

	#-----------------------------------------

	# Change number of first level analyses

	sed -i "s/${NumberOfFirstLevelAnalysesOld}/${NumberOfFirstLevelAnalysesNewMacKillop}/g" ${data_directory}/designs${threads}/GroupComparison.fsf

	# Setup groups

	#-----------------------------------------------
	# Group 1
	#-----------------------------------------------

	SubjectsGroup1FileNames=()
	basetext="set feat_files(1) \"\/home\/andek\/Research_projects\/RandomGroupAnalyses\/Results\/4mm\/boxcar30\/sub00156.feat\"" 
	basesubject="sub00156"
	SubjectsGroup1FileNames+=("$StartText")

	one=1
	# Loop over subjects to add
	for subject in $(seq 0 $(($NumberOfSubjectsDiffGroup1)) )	
	do
	    # Get a new subject
    	subjectstring=${Subjects[$(($subject))]}
	    # Change subject number (feat_files(n))	
    	modifiedtext="${basetext/$FirstSubjectGroup1/$(($subject + $one))}"		
	    # Change the subject string
	    modifiedtext="${modifiedtext/$basesubject/$subjectstring}"		
	    # Add the modified text to the list of filenames
	    SubjectsGroup1FileNames+=("$modifiedtext")
	done

	#echo ${SubjectsGroup1FileNames[@]}

	#-----------------------------------------------
	# Group 2
	#-----------------------------------------------

	SubjectsGroup2FileNames=()
	basetext="set feat_files(1) \"\/home\/andek\/Research_projects\/RandomGroupAnalyses\/Results\/4mm\/boxcar30\/sub00156.feat\"" 
	basesubject="sub00156"
	SubjectsGroup2FileNames+=${SubjectsGroup1FileNames[$(($FirstSubjectGroup2 - $one))]}

	one=1
	# Loop over subjects to add
	for subject in $(seq 0 $(($NumberOfSubjectsDiffGroup2)) )	
	do
	    # Get a new subject
    	subjectstring=${Subjects[$(($subject + $GroupSize))]}
	    # Change subject number (feat_files(n))
	    modifiedtext="${basetext/$FirstSubjectGroup1/$(($subject + $FirstSubjectGroup2))}"		
	    # Change the subject string
	    modifiedtext="${modifiedtext/$basesubject/$subjectstring}"		
	    # Add the modified text to the list of filenames
	    SubjectsGroup2FileNames+=("$modifiedtext")
	done

	#echo ${SubjectsGroup2FileNames[@]}

	#-----------------------------------------------

	# Now add all the filenames to the design file

	#-----------------------------------------------
	# Group 1
	#-----------------------------------------------

	file="GroupComparison.fsf"
	one=1
	# Loop over subjects to add, group 1
	for subject in $(seq 0 $(($NumberOfSubjectsDiffGroup1  )) )	
	do   
	    LastSubject=${SubjectsGroup1FileNames[$subject]}
    	NewSubject=${SubjectsGroup1FileNames[$(($subject + $one))]}
	
	    #echo "$LastSubject"
	    #echo "$NewSubject"

	    # Add a new subject line in the text file, by first finding the previous subject line
	    sed -i "s/${LastSubject}/${LastSubject}\n\n${NewSubject}/" ${data_directory}/designs${threads}/${file} 
	done

	#-----------------------------------------------
	# Group 2
	#-----------------------------------------------

	one=1
	# Loop over subjects to add, group 2
	for subject in $(seq 0 $(($NumberOfSubjectsDiffGroup2)) )	
	do
	    LastSubject=${SubjectsGroup2FileNames[$subject]}
	    NewSubject=${SubjectsGroup2FileNames[$(($subject + $one))]}
			
	    #echo "$LastSubject"
	    #echo "$NewSubject"

	    # Add a new subject line in the text file, by first finding the previous subject line
	    sed -i "s/${LastSubject}/${LastSubject}\n\n${NewSubject}/" ${data_directory}/designs${threads}/${file} 
	done

	#-----------------------------------------

	# Run group analysis

	date1=$(date +"%s")

	feat ${data_directory}/designs${threads}/GroupComparison.fsf &
	((threads++))
	
	if [ "$threads" -eq "$MaximumThreads" ]; then
	    wait
	    threads=0

	    # Count number of lines in cluster report files

	    Lines=`cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
	    if [ "$Lines" -gt "1" ] ; then
	        echo "Significant group difference detected!"
			echo $'\n'
			cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison.gfeat/cope1.feat/cluster_zstat1_std.txt
			echo $'\n'
			((SignificantDifferences++))
	    else
	        echo "No significant group difference detected "
	    fi

	    Lines=`cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison+.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
	    if [ "$Lines" -gt "1" ] ; then
	        echo "Significant group difference detected!"
			echo $'\n'
			cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison+.gfeat/cope1.feat/cluster_zstat1_std.txt
			echo $'\n'
			((SignificantDifferences++))
	    else
	        echo "No significant group difference detected  "
	    fi

	    Lines=`cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
	    if [ "$Lines" -gt "1" ] ; then
	        echo "Significant group difference detected!"
			echo $'\n'
			cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison++.gfeat/cope1.feat/cluster_zstat1_std.txt
			echo $'\n'
			((SignificantDifferences++))
	    else
	        echo "No significant group difference detected  "
	    fi

	    Lines=`cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison+++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
	    if [ "$Lines" -gt "1" ] ; then
	        echo "Significant group difference detected!"
			echo $'\n'
			cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison+++.gfeat/cope1.feat/cluster_zstat1_std.txt
			echo $'\n'
			((SignificantDifferences++))
	    else
	        echo "No significant group difference detected  "
	    fi

	    Lines=`cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
	    if [ "$Lines" -gt "1" ] ; then
	        echo "Significant group difference detected!"
			echo $'\n'
			cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison++++.gfeat/cope1.feat/cluster_zstat1_std.txt
			echo $'\n'
			((SignificantDifferences++))
	    else
	        echo "No significant group difference detected  "
	    fi

	    Lines=`cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison+++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
	    if [ "$Lines" -gt "1" ] ; then
	        echo "Significant group difference detected!"
			echo $'\n'
			cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison+++++.gfeat/cope1.feat/cluster_zstat1_std.txt
			echo $'\n'
			((SignificantDifferences++))
	    else
	        echo "No significant group difference detected  "
	    fi

	    Lines=`cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison++++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
	    if [ "$Lines" -gt "1" ] ; then
	        echo "Significant group difference detected!"
			echo $'\n'
			cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison++++++.gfeat/cope1.feat/cluster_zstat1_std.txt
			echo $'\n'
			((SignificantDifferences++))
	    else
	        echo "No significant group difference detected  "
	    fi

	    Lines=`cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison+++++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
	    if [ "$Lines" -gt "1" ] ; then
	        echo "Significant group difference detected!"
			echo $'\n'
			cat /home/andek/Research_projects/RandomGroupAnalyses/Results/4mm/boxcar30/GroupComparison+++++++.gfeat/cope1.feat/cluster_zstat1_std.txt
			echo $'\n'
			((SignificantDifferences++))
	    else
	        echo "No significant group difference detected  "
	    fi
	    
        # Remove old results
        rm -rf /home/andek/Research_projects/RandomGroupAnalyses/Results/${Smoothing}/${Design}/Group*

		echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !"
	fi

done

echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !"

date2=$(date +"%s")
diff=$(($date2-$date1))
echo "Processing took $(($diff)) seconds"



















