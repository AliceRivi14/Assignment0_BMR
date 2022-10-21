%% Assignment 0

% Loading data
load("data1.mat");                                                         % Freq = 2000 Hz
load("data2.mat");                                                         % Freq = 166 Hz
load("data3.mat");                                                         % Freq = 250 Hz

Freq = [2000 166 250];
Data = {data1 data2' data3'};

%% Plotting EEG Data

Rate = 1/Freq(3);
Duration = length(Data{3})/Freq(3);

figure(1)
plot(0:Rate:Duration-Rate, Data{3})
title("EEG")
xlabel("Time [ms]")
ylabel("Amplitudine [microVolt]")

% Electroencephalography (EEG) is a useful technique that helps to collect 
% brain signals that are related to different states from the surface of 
% the scalp. Based on frequency ranges between 0.1 Hz and more than 100 Hz,
% these signals are typically divided into delta, theta, alpha, beta, and 
% gamma categories.


%% Plotting EMG Data

Rate = 1/Freq(1);
Duration = length(Data{1})/Freq(1);

figure(2)
plot(0:Rate:Duration-Rate, Data{1})
title("EMG")
xlabel("Time [ms]")
ylabel("Amplitudine [microVolt]")

% Electromyograpy (EMG) refers to the collective electric signal from 
% muscles, which is controlled by the nervous system and produced during 
% muscle contraction. The signal represents the anatomical and 
% physiological properties of muscles; in fact, an EMG signal is the 
% electrical activity of a muscle's motor units, which consist of two 
% types: surface EMG, and intramuscular EMG


%% Plotting Motion Data

Rate = 1/Freq(2);
Duration = length(Data{2})/Freq(2);

figure(3)
plot(Data{2}(:,1), Data{2}(:,2),'.')
title("Motion")
xlabel("x")
ylabel("y")


