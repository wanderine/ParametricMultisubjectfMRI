#!/bin/bash

clear

GroupSize=40
DesignFile=OneSampleTtest_GroupSize${GroupSize}.fsf

# Cluster defining threshold
ClusterDefiningThresholdOld="set fmri(z_thresh) 2.3"
ClusterDefiningThresholdNew="set fmri(z_thresh) 2.3"
CDT=2.3

# Fixed or random effect, 0 = mixed effect OLS, 2 = mixed effect FLAME1, 3 = fixed effect
EffectOld="set fmri(mixed_yn) 2"
EffectNew="set fmri(mixed_yn) 0"
AnalysisType=OLS

SmoothingOld=4mm

DesignOld=boxcar30
DesignNew=boxcar30

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

# Set corrected threshold
ThresholdOld='0.05'
ThresholdNew='0.05'

NumberOfSubjectsDiffGroup1=$((GroupSize - one)) # (length of Subjects arrays - 1, since there is one regressor and one group member in the fsf files)

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

	# Loop over many random group analyses
	for Comparison in {1..1000}
	#for Comparison in {1..8}
	do
		echo "Starting random group analysis $Comparison !"

		# Read a pregenerated permutation from file
		Randomized=`cat /home/andek/Research_projects/RandomGroupAnalyses/${StudyNew}_permutations/permutation${Comparison}.txt`

		Subjects=()
   		subjectstring=${Randomized[$((0))]}
	    Subjects+=($subjectstring)

		#echo ${Subjects[10]}

		#-------------------------------------

		FirstSubjectGroup1=1

		StartText="set fmri(copeinput.1) 1"

		# Copy template design 
		cp ${design_directory}/${DesignFile} ${temp_directory}/designs$threads/

		#-----------------------------------------
		# Change study (output directory)
		sed -i "s/${StudyOld}/${StudyNew}/g" ${temp_directory}/designs${threads}/${DesignFile}

		#-----------------------------------------
		# Change smoothing (output directory)
		sed -i "s/${SmoothingOld}/${SmoothingNew}/g" ${temp_directory}/designs${threads}/${DesignFile}

		#-----------------------------------------
		# Change design (output directory)
		sed -i "s/${DesignOld}/${DesignNew}/g" ${temp_directory}/designs${threads}/${DesignFile}

		#-----------------------------------------
		# Change effect type
		sed -i "s/${EffectOld}/${EffectNew}/g" ${temp_directory}/designs${threads}/${DesignFile}

		#-----------------------------------------
		# Change thresholding type
		sed -i "s/${ThresholdMethodOld}/${ThresholdMethodNew}/g" ${temp_directory}/designs${threads}/${DesignFile}

		#-----------------------------------------
		# Change cluster defining threshold
		sed -i "s/${ClusterDefiningThresholdOld}/${ClusterDefiningThresholdNew}/g" ${temp_directory}/designs${threads}/${DesignFile}

		#-----------------------------------------
		# Change corrected threshold
		sed -i "s/${ThresholdOld}/${ThresholdNew}/g" ${temp_directory}/designs${threads}/${DesignFile}

		# Setup group

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
		# Now add all the filenames to the design file

		#-----------------------------------------------
		# Group 1
		#-----------------------------------------------

		one=1
		# Loop over subjects to add, group 1
		for subject in $(seq 0 $(($NumberOfSubjectsDiffGroup1  )) )	
		do   
		    LastSubject=${SubjectsGroup1FileNames[$subject]}
	    	NewSubject=${SubjectsGroup1FileNames[$(($subject + $one))]}
	
		    #echo "$LastSubject"
		    #echo "$NewSubject"

		    # Add a new subject line in the text file, by first finding the previous subject line
		    sed -i "s/${LastSubject}/${LastSubject}\n\n${NewSubject}/" ${temp_directory}/designs${threads}/${DesignFile} 
		done


		#-----------------------------------------

		# Run group analysis
		feat ${temp_directory}/designs${threads}/${DesignFile} &
		((threads++))
	
		if [ "$threads" -eq "$MaximumThreads" ]; then
		    wait
		    threads=0

		    # Count number of lines in cluster report files

		    Lines=`cat ${results_directory}/GroupMean.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group activation detected!"
				echo $'\n'
				cat ${results_directory}/GroupMean.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - seven))
	            cp ${results_directory}/GroupMean.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group activation detected "
		    fi

		    Lines=`cat ${results_directory}/GroupMean+.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group activation detected!"
				echo $'\n'
				cat ${results_directory}/GroupMean+.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - six))
	            cp ${results_directory}/GroupMean+.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group activation detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupMean++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group activation detected!"
				echo $'\n'
				cat ${results_directory}/GroupMean++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - five))
	            cp ${results_directory}/GroupMean++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group activation detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupMean+++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group activity detected!"
				echo $'\n'
				cat ${results_directory}/GroupMean+++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - four))
	            cp ${results_directory}/GroupMean+++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group activation detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupMean++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group activation detected!"
				echo $'\n'
				cat ${results_directory}/GroupMean++++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - three))
	            cp ${results_directory}/GroupMean++++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group activation detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupMean+++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group activation detected!"
				echo $'\n'
				cat ${results_directory}/GroupMean+++++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - two))
	            cp ${results_directory}/GroupMean+++++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group activation detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupMean++++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group activation detected!"
				echo $'\n'
				cat ${results_directory}/GroupMean++++++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
				Comparison_=$((Comparison - one))
	            cp ${results_directory}/GroupMean++++++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison_}.txt
		    else
		        echo "No significant group activation detected  "
		    fi

		    Lines=`cat ${results_directory}/GroupMean+++++++.gfeat/cope1.feat/cluster_zstat1_std.txt | wc -l`
		    if [ "$Lines" -gt "1" ] ; then
		        echo "Significant group activation detected!"
				echo $'\n'
				cat ${results_directory}/GroupMean+++++++.gfeat/cope1.feat/cluster_zstat1_std.txt
				echo $'\n'
				((SignificantDifferences++))
	            cp ${results_directory}/GroupMean+++++++.gfeat/cope1.feat/cluster_zstat1_std.txt ${results_directory}/ClusterCoordinates${AnalysisType}_${CDT}/coordinates_comparison${Comparison}.txt
		    else
		        echo "No significant group activation detected  "
		    fi
	    
	        # Remove old results
	        rm -rf /home/andek/Research_projects/RandomGroupAnalyses/Results/${StudyNew}/${SmoothingNew}/${DesignNew}/Group*
	
			echo "Out of $Comparison random group comparisons, significant group activation were detected $SignificantDifferences times !"
		fi

	done

	echo "Out of $Comparison random group comparisons, significant group activation were detected $SignificantDifferences times !" > /home/andek/Research_projects/RandomGroupAnalyses/Results/results_fsl_onesamplettest_${StudyNew}_${DesignNew}_${SmoothingNew}_${AnalysisType}_${CDT}_groupsize${GroupSize}.txt

	date2=$(date +"%s")
	diff=$(($date2-$date1))
	echo "Processing took $(($diff)) seconds"

done



