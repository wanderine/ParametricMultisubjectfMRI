close all
clear all
clc

addpath('D:\spm8')

cd D:\fcon1000\Beijing\
%cd D:\fcon1000\Cambridge\

subjects = dir;

for subject = 1:length(subjects);    
    subjectString = subjects(subject+3).name
    %spm_check_registration(['D:\fcon1000\Beijing\' subjectString '\anat\wmmprage_anonymized.nii'])       
    spm_check_registration(['D:\fcon1000\Beijing\' subjectString '\func\con_event1_s10.hdr'])       
    pause
end



%
%
%
