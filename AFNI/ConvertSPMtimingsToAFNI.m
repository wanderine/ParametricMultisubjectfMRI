close all
clear all
clc

study = 'Beijing';

load ../SPM/randomDifferenceEventsBeijingAllSubjects.mat

numEvents = 13;

for subject = 1:198
    
    fid = fopen(['/home/andek/Research_projects/RandomGroupAnalyses/' study '_randomevents/differenceEventsstim1_Subject' num2str(subject) '.txt'],'w');    
    for event = 1:numEvents
        fprintf(fid, ' %i:%i ', allRandomOnsets1(subject,event), allRandomDurations1(subject,event));
    end
    fprintf(fid,' \n ');        
    fclose(fid);
    
    fid = fopen(['/home/andek/Research_projects/RandomGroupAnalyses/' study '_randomevents/differenceEventsstim2_Subject' num2str(subject) '.txt'],'w');    
    for event = 1:numEvents
        fprintf(fid, ' %i:%i ', allRandomOnsets2(subject,event), allRandomDurations2(subject,event));
    end
    fprintf(fid,' \n ');        
    fclose(fid);
    
end

