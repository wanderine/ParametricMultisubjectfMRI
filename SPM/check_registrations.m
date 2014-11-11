close all
clear all
clc

addpath('D:\spm8')

cd D:\fcon1000\Beijing\
%cd D:\fcon1000\Cambridge\

subjects = dir;

for subject = 100:length(subjects);    
    subjectString = subjects(subject+2).name
    spm_check_registration(['D:\fcon1000\Beijing\' subjectString '\anat\wmmprage_anonymized.nii'])       
    %spm_check_registration(['D:\fcon1000\Cambridge\' subjectString '\func\con_boxcar10_s4.hdr'])       
    pause
end



%
%
%
