#!/bin/bash

clear

Smoothing=4mm
Design=boxcar30
Study=Cambridge
#Study=Beijing

results_directory=/home/andek/Research_projects/RandomGroupAnalyses/Results/${Study}/${Smoothing}/${Design}
design_directory=/home/andek/Research_projects/RandomGroupAnalyses/Design_templates
temp_directory=/home/andek/Research_projects/RandomGroupAnalyses/temp

# Copy the design template
cp ${design_directory}/GroupMean.fsf ${temp_directory}

# Remove old results
rm -rf /home/andek/Research_projects/RandomGroupAnalyses/Results/${Study}/${Smoothing}/${Design}/GroupMean*

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

SmoothingOld="4mm"
SmoothingNew="6mm"

# Get list of subjects
Randomized=`cat /home/andek/Data/fcon1000/Cambridge/Cambridge_Buckner_subjects.txt`

#echo ${Randomized[@]}

NumberOfSubjects=197 #actually 198, but we loop from 0-197
Subjects=()

for subject in $(seq 0 $(($NumberOfSubjects)) )	
do
   	subjectstring=${Randomized[$(($subject))]}
    Subjects+=($subjectstring)
done

#echo ${Subjects[10]}
#-------------------------------------

# Fixed or random effect, 2 = mixed, 3 = fixed
EffectOld="set fmri(mixed_yn) 2"
EffectNew="set fmri(mixed_yn) 2"

StartText="set fmri(copeinput.1) 1"

#-----------------------------------------
# Change smoothing (output directory)

#sed -i "s/${SmoothingOld}/${SmoothingNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

#-----------------------------------------
# Change effect type

#sed -i "s/${EffectOld}/${EffectNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

#-----------------------------------------
# Change thresholding type

#sed -i "s/${ThresholdMethodOld}/${ThresholdMethodNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

#-----------------------------------------
# Change cluster defining threshold

#sed -i "s/${ClusterDefiningThresholdOld}/${ClusterDefiningThresholdNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

#-----------------------------------------
# Change threshold

#sed -i "s/${ThresholdOld}/${ThresholdNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

# Setup group

SubjectsGroup1FileNames=()
basetext="set feat_files(1) \"\/home\/andek\/Research_projects\/RandomGroupAnalyses\/Results\/Cambridge\/4mm\/boxcar30\/sub00156.feat\"" 
basesubject="sub00156"
SubjectsGroup1FileNames+=("$StartText")
FirstSubject=1

one=1
# Loop over subjects to add
for subject in $(seq 0 $(($NumberOfSubjects)) )	
do
    # Get a new subject
   	subjectstring=${Subjects[$(($subject))]}
    # Change subject number (feat_files(n))	
   	modifiedtext="${basetext/$FirstSubject/$(($subject + $one))}"		
    # Change the subject string
    modifiedtext="${modifiedtext/$basesubject/$subjectstring}"		
    # Add the modified text to the list of filenames
    SubjectsGroup1FileNames+=("$modifiedtext")
done

#-----------------------------------------------
# Now add all the filenames to the design file

#-----------------------------------------------
# Group 1
#-----------------------------------------------

file="GroupMean.fsf"
one=1
# Loop over subjects to add, group 1
for subject in $(seq 0 $(($NumberOfSubjects )) )	
do   
    LastSubject=${SubjectsGroup1FileNames[$subject]}
   	NewSubject=${SubjectsGroup1FileNames[$(($subject + $one))]}

    #echo "$LastSubject"
    #echo "$NewSubject"

    # Add a new subject line in the text file, by first finding the previous subject line
    sed -i "s/${LastSubject}/${LastSubject}\n\n${NewSubject}/" ${temp_directory}/${file} 
done

# Run group analysis

feat ${temp_directory}/GroupMean.fsf &



















