#!/bin/bash

Smoothing=6mm
Design=boxcar30

Study=Cambridge
#Study=Beijing

start_directory=/home/andek/Research_projects/RandomGroupAnalyses

# Loop over all subjects
for i in /home/andek/Data/fcon1000/${Study}/*; do 

    # Check if fMRI data exists for this directory
    if [ -e ${i}/func/rest.nii.gz ]; then

        # Go to current directory
        cd $i
        # Get subject name
        Subject=${PWD##*/}
		echo "-------------------------------"	
   		echo "Processing" $Subject
		echo "-------------------------------"	
        # Go back to original directory
        cd $start_directory

        # set data directories
        top_dir=/home/andek
        anat_dir=$top_dir/Data/fcon1000/${Study}/${Subject}/anat
        epi_dir=$top_dir/Data/fcon1000/${Study}/${Subject}/func
        stim_dir=$top_dir/Research_projects/RandomGroupAnalyses

        # run afni_proc.py to create a single subject processing script
        afni_proc.py -subj_id $Subject                                   \
                -script proc.$Subject -scr_overwrite                     \
                -blocks tshift align tlrc volreg blur mask scale regress \
                -copy_anat $anat_dir/mprage_anonymized.nii.gz            \
                -tcat_remove_first_trs 0                                 \
                -dsets $epi_dir/rest.nii.gz                              \
                -align_opts_aea -giant_move                              \
                -tlrc_opts_at -OK_maxite                                 \
                -volreg_align_to third                                   \
                -volreg_align_e2a                                        \
                -volreg_tlrc_warp                                        \
                -blur_size 6.0                                           \
                -regress_stim_times $stim_dir/boxcar30stim.txt           \
                -regress_stim_labels                                     \
                    boxcar30                                             \
                -regress_basis 'BLOCK(30,1)'                             \
                -regress_censor_motion 0.3                               \
                -regress_opts_3dD                                        \
                    -jobs 8                                              \
                    -gltsym 'SYM: boxcar30' -glt_label 1 activity        \
                -regress_make_ideal_sum sum_ideal.1D                     \
				-volreg_warp_dxyz 3										 \
                -regress_est_blur_epits                                  \
                -regress_est_blur_errts

		# Fix to enforce 3 mm voxels
        # -volreg_warp_dxyz 3										 \

        # Move analysis script
        mv proc.${Subject} Scripts/${Study}/${Smoothing}/${Design}

        # Run analysis
        tcsh -xef Scripts/${Study}/${Smoothing}/${Design}/proc.${Subject} |& tee  Logs/${Study}/${Smoothing}/${Design}/output.proc.${Subject} 
    
        # Move results to correct folder
        mv ${Subject}.results Results/${Study}/${Smoothing}/${Design}

    else
	    echo "This directory does not contain any fMRI data!"
    fi

done



