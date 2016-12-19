clear all
clc
close all

numEvents = 11;

minRest = 11;
maxRest = 13;

minActivity = 3;
maxActivity = 6;

allRandomDurations1 = zeros(198,numEvents);
allRandomDurations2 = zeros(198,numEvents);

allRandomOnsets1 = zeros(198,numEvents);
allRandomOnsets2 = zeros(198,numEvents);

allsts = zeros(198,1);

for subject = 1:198
    
    randomDurations1 = zeros(numEvents,1);
    randomDurations2 = zeros(numEvents,1);
    
    randomOnsets1 = zeros(numEvents,1);
    randomOnsets2 = zeros(numEvents,1);
    
    regressor1Events = 1;
    regressor2Events = 1;
    previousOnset = 0;
    previousActivity = 0;
    
    for event = 1:(numEvents*2)
        
        % All regressor 1 events have been set, the rest is regressor 2
        if (regressor1Events > numEvents)
            regressor = 2;
            % All regressor 2 events have been set, the rest is regressor 1
        elseif (regressor2Events > numEvents)
            regressor = 1;
        else
            % Randomly pick regressor 1 or 2
            regressor = randi(2);
        end
        
        if regressor == 1
            randomOnsets1(regressor1Events) = previousOnset + previousActivity + max(randi(maxRest),minRest);
            randomDurations1(regressor1Events) = max(randi(maxActivity),minActivity);
            previousOnset = randomOnsets1(regressor1Events);
            previousActivity = randomDurations1(regressor1Events);
            regressor1Events = regressor1Events + 1;
        elseif regressor == 2
            randomOnsets2(regressor2Events) = previousOnset + previousActivity + max(randi(maxRest),minRest);
            randomDurations2(regressor2Events) = max(randi(maxActivity),minActivity);
            previousOnset = randomOnsets2(regressor2Events);
            previousActivity = randomDurations2(regressor2Events);
            regressor2Events = regressor2Events + 1;
        end
        
    end
    
    sts(subject) = max(max(randomOnsets1(:)),max(randomOnsets2(:)));
    
    temp1 = zeros(450,1);
    temp2 = zeros(450,1);
    
    for event = 1:numEvents
        for t = 0:(randomDurations1(event)-1)
            temp1(randomOnsets1(event)+t) = 1;
        end
        for t = 0:(randomDurations2(event)-1)
            temp2(randomOnsets2(event)+t) = 1;
        end
    end
    
    figure(1)
    plot(temp1,'r')
    hold on
    plot(temp2,'b')
    hold off
    drawnow
    pause(0.1)

    allRandomOnsets1(subject,:) = randomOnsets1;
    allRandomOnsets2(subject,:) = randomOnsets2;
    
    allRandomDurations1(subject,:) = randomDurations1;
    allRandomDurations2(subject,:) = randomDurations2;
    
end

save('randomDifferenceEventsCambridgeAllSubjects.mat','allRandomOnsets1','allRandomOnsets2','allRandomDurations1','allRandomDurations2')


