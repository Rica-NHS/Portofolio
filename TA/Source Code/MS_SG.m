clear all;
format long;
addpath('m_Files'); % add 'm_Files' folder to the search path

%define variable
tmissSG=0;
%
%baca data
%SG
SG=readtable('S68.SI.csv');
%check missing value + handle
missSG=ismissing(SG);
for i=1:574
    for j=1:7
        if missSG(i,j)==1
            tmissSG=tmissSG+1;
        else
            tmissSG=tmissSG;            
        end
    end
end

%SG
CSG=table2array(SG(:,6));
RSG=zeros(574,1);
for i=2:574
    RSG(i)=(CSG(i)/CSG(i-1))-1;
end

%markov switching
%define variabel
k=2; %regime/states = bull & bear
S=[1 1]; % variabel kontrol untuk memasukan dimana efek markov switching
dep3=RSG;
indep = ones(size(RSG)); % A dummy explanatory variable
advOpt.distrib='Normal';            % The Distribution assumption ('Normal', 't' or 'GED')
%advOpt.std_method=1;                % Defining the method for calculation of standard errors. See pdf file for more details


Spec_Out=MS_Regress_Fit(dep3,indep,k,S); % Estimating the model

Probability=Spec_Out.smoothProb;
Trans_Prob_Mat=Spec_Out.Coeff.p;
rmpath('m_Files');