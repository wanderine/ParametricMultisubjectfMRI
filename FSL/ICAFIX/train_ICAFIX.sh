#!/bin/bash

clear

#Study=OuluNew

#Study=CambridgeNew

Study=BeijingNew

design_directory=/data/andek/fcon1000

# Train ICA FIX Oulu
#/home/andek/Research_projects/FIX/fix1.065/fix -t AndersOulu10Subjects /data/andek/fcon1000/${Study}/sub01077/func.ica /data/andek/fcon1000/${Study}/sub01241/func.ica /data/andek/fcon1000/${Study}/sub01261/func.ica /data/andek/fcon1000/${Study}/sub01679/func.ica /data/andek/fcon1000/${Study}/sub02036/func.ica /data/andek/fcon1000/${Study}/sub05081/func.ica /data/andek/fcon1000/${Study}/sub06307/func.ica /data/andek/fcon1000/${Study}/sub07552/func.ica /data/andek/fcon1000/${Study}/sub07876/func.ica /data/andek/fcon1000/${Study}/sub07946/func.ica  
			
# Train ICA FIX Cambridge
#/home/andek/Research_projects/FIX/fix1.065/fix -t AndersCambridge10Subjects /data/andek/fcon1000/${Study}/sub00156/func.ica /data/andek/fcon1000/${Study}/sub00294/func.ica /data/andek/fcon1000/${Study}/sub01361/func.ica /data/andek/fcon1000/${Study}/sub02591/func.ica /data/andek/fcon1000/${Study}/sub02953/func.ica /data/andek/fcon1000/${Study}/sub04187/func.ica /data/andek/fcon1000/${Study}/sub04270/func.ica /data/andek/fcon1000/${Study}/sub04491/func.ica /data/andek/fcon1000/${Study}/sub04665/func.ica /data/andek/fcon1000/${Study}/sub05306/func.ica  

# Train ICA FIX Beijing
/home/andek/Research_projects/FIX/fix1.065/fix -t AndersBeijing10Subjects -l /data/andek/fcon1000/${Study}/sub00440/func.ica /data/andek/fcon1000/${Study}/sub01018/func.ica /data/andek/fcon1000/${Study}/sub01244/func.ica /data/andek/fcon1000/${Study}/sub02403/func.ica /data/andek/fcon1000/${Study}/sub04050/func.ica /data/andek/fcon1000/${Study}/sub04191/func.ica /data/andek/fcon1000/${Study}/sub05267/func.ica /data/andek/fcon1000/${Study}/sub06880/func.ica /data/andek/fcon1000/${Study}/sub06899/func.ica /data/andek/fcon1000/${Study}/sub07144/func.ica  

