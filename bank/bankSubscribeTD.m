
%%
%Importing data
bankSub_data = importdata('bank_subscribe_term_deposit.csv');
bankSub_data.data;

%%
% k nearest neighbor for missing values
% returns imputedData after replacing NaNs in the input data
bank_data = knnimpute(bankSub_data.data);
bank_data;

%%

cval = cvpartition(data1.Class,'HoldOut', 0.2)
train_data = data1(training(cval),:)    
test_data = data1(test(cval),:)
%%








 %%
%data2 = importdata('bank_subscribe_term_deposit.csv')
%data2
%% k nearest
%data2 = knnimpute(data2.data);
% normalise
%n_data2 = normalize(data2);



