close all
clear all
clc

addpath('D:\spm8')

cd D:\fcon1000\Cambridge\

subjects = dir;

for subject = 6:length(subjects);    
%for subject = 5:5
    subjectString = subjects(subject+2).name
    %spm_check_registration(['D:\fcon1000\Cambridge\' subjectString '\anat\wmmprage_anonymized.nii'])       
    pause
end

%10619
%13093
%13216
%14194
%17772
%18295
%19717
%24670
%25058
%27065
%27230
%27796
%34586
%39053
%
