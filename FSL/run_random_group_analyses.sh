#!/bin/bash

clear

SmoothingOld=4mm

DesignOld=boxcar30
DesignNew=boxcar10

StudyOld=Cambridge
StudyNew=Cambridge

design_directory=/home/andek/Research_projects/RandomGroupAnalyses/Design_templates
temp_directory=/home/andek/Research_projects/RandomGroupAnalyses/temp

threads=0
MaximumThreads=8 # maximum number of CPU threads to use

# Threshold type
# 1 = uncorrected, 2 = voxel corrected, 3 = cluster corrected
ThresholdMethodOld="set fmri(thresh) 3"
ThresholdMethodNew="set fmri(thresh) 3"

# Cluster defining threshold
ClusterDefiningThresholdOld="set fmri(z_thresh) 2.3"
ClusterDefiningThresholdNew="set fmri(z_thresh) 3.1"
CDT=3.1

# Set corrected threshold
ThresholdOld='0.05'
ThresholdNew='0.05'

# Fixed or random effect, 0 = mixed effect OLS, 2 = mixed effect FLAME1, 3 = fixed effect
EffectOld="set fmri(mixed_yn) 2"
EffectNew="set fmri(mixed_yn) 2"
AnalysisType=FLAME1

# Number of subjects
NumberOfSubjectsOld="set fmri(npts) 1"
NumberOfSubjectsNew="set fmri(npts) 40" # change

NumberOfFirstLevelAnalysesOld="set fmri(multiple) 1"
NumberOfFirstLevelAnalysesNew="set fmri(multiple) 40" # change (total number of subjects)

NumberOfSubjectsDiffGroup1=19 # change   (length of Subjects arrays - 1, since there is one regressor and one group member in the fsf files)
NumberOfSubjectsDiffGroup2=19 # change  (length of Subjects arrays - 1, since there is one regressor and one group member in the fsf files) 

one=1
two=2
three=3
four=4
five=5
six=6
seven=7

# Loop over different smoothing levels
for Smoothing in 1 2 3 4 5 6 7
do
	SignificantDifferences=0

	date1=$(date +"%s")

	if [ "$Smoothing" -eq "1" ] ; then
		SmoothingNew=4mm
	elif [ "$Smoothing" -eq "2" ] ; then
		SmoothingNew=6mm
	elif [ "$Smoothing" -eq "3" ] ; then
		SmoothingNew=8mm
	elif [ "$Smoothing" -eq "4" ] ; then
		SmoothingNew=10mm
	elif [ "$Smoothing" -eq "5" ] ; then
		SmoothingNew=12mm
	elif [ "$Smoothing" -eq "6" ] ; then
		SmoothingNew=14mm
	elif [ "$Smoothing" -eq "7" ] ; then
		SmoothingNew=16mm
	fi

	results_directory=/home/andek/Research_projects/RandomGroupAnalyses/Results/${StudyNew}/${SmoothingNew}/${DesignNew}

	# Remove old results
	rm -rf /home/andek/Research_projects/RandomGroupAnalyses/Results/${StudyNew}/${SmoothingNew}/${DesignNew}/Group*

	# Loop over many random group comparisons
	for Comparison in {1..1000}
	#for Comparison in {1..8}
	do
		echo "Starting random group comparison $Comparison !"

		# Read a pregenerated permutation from file
		Randomized=`cat /home/andek/Research_projects/RandomGroupAnalyses/${StudyNew}_permutations/permutation${Comparison}.txt`

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

		StartText="set fmri(copeinput.1) 1"

		# Copy template design 
		cp ${design_directory}/GroupComparison.fsf ${temp_directory}/designs$threads/

		#-----------------------------------------
		# Change smoothing (output directory)
		sed -i "s/${SmoothingOld}/${SmoothingNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

		#-----------------------------------------
		# Change design (output directory)
		sed -i "s/${DesignOld}/${DesignNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

		#-----------------------------------------
		# Change effect type
		sed -i "s/${EffectOld}/${EffectNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

		#-----------------------------------------
		# Change thresholding type
		sed -i "s/${ThresholdMethodOld}/${ThresholdMethodNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

		#-----------------------------------------
		# Change number of subjects
		sed -i "s/${NumberOfSubjectsOld}/${NumberOfSubjectsNewMacKillop}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

		#-----------------------------------------
		# Change cluster defining threshold
		sed -i "s/${ClusterDefiningThresholdOld}/${ClusterDefiningThresholdNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

		#-----------------------------------------
		# Change threshold
		sed -i "s/${ThresholdOld}/${ThresholdNew}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

		#-----------------------------------------
		# Change number of first level analyses
		sed -i "s/${NumberOfFirstLevelAnalysesOld}/${NumberOfFirstLevelAnalysesNewMacKillop}/g" ${temp_directory}/designs${threads}/GroupComparison.fsf

		# Setup groups

		#-----------------------------------------------
		# Group 1
		#-----------------------------------------------

		SubjectsGroup1FileNames=()
		basetext="set feat_files(1) \"\/home\/andek\/Research_projects\/RandomGroupAnalyses\/Results\/Cambridge\/4mm\/boxcar30\/sub00156.feat\"" 
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
		    # Change the amount of smoothing
		    modifiedtext="${modifiedtext/$SmoothingOld/$SmoothingNew}"		
		    # Change the design
		    modifiedtext="${modifiedtext/$DesignOld/$DesignNew}"		
		    # Add the modified text to the list of filenames
		    SubjectsGroup1FileNames+=("$modifiedtext")
		done

		#echo ${SubjectsGroup1FileNames[@]}

		#-----------------------------------------------
		# Group 2
		#-----------------------------------------------

		SubjectsGroup2FileNames=()
		basetext="set feat_files(1) \"\/home\/andek\/Research_projects\/RandomGroupAnalyses\/Results\/Cambridge\/4mm\/boxcar30\/sub00156.feat\"" 
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
		    # Change the amount of smoothing
		    modifiedtext="${modifiedtext/$SmoothingOld/$SmoothingNew}"		
		    # Change the design
		    modifiedtext="${modifiedtext/$DesignOld/$DesignNew}"
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
		    sed -i "s/${LastSubject}/${LastSubject}\n\n${NewSubject}/" ${temp_directory}/designs${threads}/${file} 
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
		    sed -i "s/${LastSubject}/${LastSubject}\n\n${NewSubject}/" ${temp_directory}/designs${threads}/${file} 
		done

		#-----------------------------------------

		# Run group analysis
		feat ${temp_directory}/designs${threads}/GroupComparison.fsf &
		((threads++))
	
		if [ "$threads" -eq "$MaximumThreads" ]; then
		    wait
		    threads=0

		    # Count number of lines in cluster report files

		    Lines=`cat ${results_directory}/GroupComparison.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group difference detected!"
				echo $'\n'
				cat ${results_directory}/GroupComparison.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - seven))
	            cp ${results_directory}/GroupComparison.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group difference detected "
		    fi

		    Lines=`cat ${results_directory}/GroupComparison+.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group difference detected!"
				echo $'\n'
				cat ${results_directory}/GroupComparison+.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - six))
	            cp ${results_directory}/GroupComparison+.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group difference detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupComparison++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group difference detected!"
				echo $'\n'
				cat ${results_directory}/GroupComparison++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - five))
	            cp ${results_directory}/GroupComparison++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group difference detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupComparison+++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group difference detected!"
				echo $'\n'
				cat ${results_directory}/GroupComparison+++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - four))
	            cp ${results_directory}/GroupComparison+++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group difference detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupComparison++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group difference detected!"
				echo $'\n'
				cat ${results_directory}/GroupComparison++++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - three))
	            cp ${results_directory}/GroupComparison++++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group difference detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupComparison+++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group difference detected!"
				echo $'\n'
				cat ${results_directory}/GroupComparison+++++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - two))
	            cp ${results_directory}/GroupComparison+++++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group difference detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupComparison++++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group difference detected!"
				echo $'\n'
				cat ${results_directory}/GroupComparison++++++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - one))
	            cp ${results_directory}/GroupComparison++++++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group difference detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupComparison+++++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group difference detected!"
				echo $'\n'
				cat ${results_directory}/GroupComparison+++++++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
	            cp ${results_directory}/GroupComparison+++++++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison}.txt
		    else
		        echo "No significant group difference detected  "
		    fi
	    
	        # Remove old results
	        rm -rf /home/andek/Research_projects/RandomGroupAnalyses/Results/${StudyNew}/${SmoothingNew}/${DesignNew}/Group*
	
			echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !"
		fi

	done

	echo "Out of $Comparison random group comparisons, significant group differences were detected $SignificantDifferences times !" > /home/andek/Research_projects/RandomGroupAnalyses/Results/results_fsl_${StudyNew}_${DesignNew}_${SmoothingNew}_${AnalysisType}_${CDT}.txt

	date2=$(date +"%s")
	diff=$(($date2-$date1))
	echo "Processing took $(($diff)) seconds"

done



