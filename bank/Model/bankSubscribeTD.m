close all
clear all
clc

%%
%Importing data
bankSub_data = importdata('../bank_subscribe_term_deposit.csv');
bankSub_data;

%%
% k nearest neighbor for missing values
% returns imputedData after replacing NaNs in the input data
bank_data = knnimpute(bankSub_data.data);
bank_data;

%%
%Partition data into training and test sets to create models
bank_cval = cvpartition(bank_data(:,17),'HoldOut',0.2)
idx = bank_cval.test;

%split data into train and test sets
train_data = bank_data(~idx,:);    
test_data = bank_data(idx,:);

%%
%write data to file

writematrix(train_data,'bankTrainData.csv')
writematrix(test_data, 'bankTestData.csv')






%%





%works

%bank_cval = cvpartition(bank_data(:,17),'HoldOut',0.2)
%idx = bank_cval.test;

%%
%works
%train_data = bank_data(~idx,:)    
%test_data = bank_data(idx,:)
 %%
%data2 = importdata('bank_subscribe_term_deposit.csv')
%data2
%% k nearest
%data2 = knnimpute(data2.data);
% normalise
%n_data2 = normalize(data2);



