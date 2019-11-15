clear all;
format long;
addpath('m_Files'); % add 'm_Files' folder to the search path

%define variable
tmissSH=0;
%
%baca data

%SH
SH=readtable('000001.SS.csv');
%check missing value + handle
missSH=ismissing(SH);
for i=1:574
    for j=1:7
        if missSH(i,j)==1
            tmissSH=tmissSH+1;
        else
            tmissSH=tmissSH;            
        end
    end
end
tSH=SH(:,[2:7]);
nSH = fillmissing(tSH,'movmean',50);
rnSH=[SH(:,1),nSH];


%return market

%SH
CSH=table2array(rnSH(:,6));
RSH=zeros(574,1);
for i=2:574
    RSH(i)=(CSH(i)/CSH(i-1))-1;
end



%markov switching
%define variabel
k=2; %regime/states = bull & bear
S=[1 1]; % variabel kontrol untuk memasukan dimana efek markov switching

dep2=RSH;

indep = ones(size(RSH)); % A dummy explanatory variable
advOpt.distrib='Normal';            % The Distribution assumption ('Normal', 't' or 'GED')
%advOpt.std_method=1;                % Defining the method for calculation of standard errors. See pdf file for more details


Spec_Out=MS_Regress_Fit(dep2,indep,k,S); % Estimating the model

Probability=Spec_Out.smoothProb;
Trans_Prob_Mat=Spec_Out.Coeff.p;
rmpath('m_Files');