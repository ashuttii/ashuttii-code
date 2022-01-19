%%
%Initialization

close all
clear all
clc

%% 
%Import test and training set

train = importdata('bankTrainData.csv');
test = importdata('bankTestData.csv');

%%
% split data and class

train_X = train(:,1:16);
train_Y = train(:,17);

test_X = test(:,1:16);
test_Y = test(:,17);

%%
%

model = fitglm(train_X,train_Y,'Distribution','poisson');
%model_LR = mnrfit(train_X,train_Y);

%%
yfit = predict(model, test_X)
%%
stats.p

%%



