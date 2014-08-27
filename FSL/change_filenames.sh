#!/bin/bash

# This is a help file that changes the name of all mprage_skullstripped.nii.gz to mprage_anonymized_brain.nii.gz, as FSL looks for
# mprage_anonymized.nii.gz and mprage_anonymized_brain.nii.gz

clear

for i in /home/andek/Data/fcon1000/Cambridge/* ; do

    echo "This is directory " $i

    if [ -e "${i}/anat/mprage_skullstripped.nii.gz" ]; then
	mv ${i}/anat/mprage_skullstripped.nii.gz ${i}/anat/mprage_anonymized_brain.nii.gz
    else
	echo "File does not exist!"
    fi

done
