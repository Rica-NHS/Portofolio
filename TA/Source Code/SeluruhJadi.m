clear all;
format long;
addpath('m_Files'); % add 'm_Files' folder to the search path

%define variable
tmissJKSE=0;
tmissSH=0;
tmissSG=0;
%
%baca data
%INA
JKSE=readtable('^JKSE.csv');
%check missing value + handle
missJKSE=ismissing(JKSE);
for i=1:574
    for j=1:7
        if missJKSE(i,j)==1
            tmissJKSE=tmissJKSE+1;
        else
            tmissJKSE=tmissJKSE;            
        end
    end
end
tJKSE=JKSE(:,[2:7]);
nJKSE = fillmissing(tJKSE,'movmean',50);
rnJKSE=[JKSE(:,1),nJKSE];

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

%return market
%ID
CJKSE=table2array(rnJKSE(:,6));
RJKSE=zeros(574,1);
for i=2:574
    RJKSE(i)=(CJKSE(i)/CJKSE(i-1))-1;
end

%SH
CSH=table2array(rnSH(:,6));
RSH=zeros(574,1);
for i=2:574
    RSH(i)=(CSH(i)/CSH(i-1))-1;
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
dep1=RJKSE;
dep2=RSH;
dep3=RSG;
dep1_dum=RJKSE(1:150,:);
indep_dum=ones(size(dep1_dum));
indep = ones(size(RJKSE)); %
advOpt.distrib='Normal';            % The Distribution assumption ('Normal', 't' or 'GED')
%advOpt.std_method=1;                % Defining the method for calculation of standard errors. See pdf file for more details

% Estimating the model
Spec_Out1=MS_Regress_Fit(dep1,indep,k,S); %perhitungan menggunakan MS pd saham JKSE,untuk menampilkan ploting chance edit MS_Regress_Fit.m dalam folder m_files dan hapus comment pada bagian doPlot
Spec_Out2=MS_Regress_Fit(dep2,indep,k,S); %perhitungan menggunakan MS pd saham SH,untuk menampilkan ploting chance edit MS_Regress_Fit.m dalam folder m_files dan hapus comment pada bagian doPlot
Spec_Out3=MS_Regress_Fit(dep3,indep,k,S); %perhitungan menggunakan MS pd saham SG,untuk menampilkan ploting chance edit MS_Regress_Fit.m dalam folder m_files dan hapus comment pada bagian doPlot

% Probabilitas
ProbabilityJKSE=Spec_Out1.smoothProb;
ProbabilitySH=Spec_Out2.smoothProb;
ProbabilitySG=Spec_Out3.smoothProb;
%matriks transisi/peluang p11 p12 p21 p22
%Trans_Prob_MatJKSE=Spec_Out1.Coeff.p;
%Trans_Prob_MatJKSE=Spec_Out1.Coeff.p;
%Trans_Prob_MatJKSE=Spec_Out1.Coeff.p;

%perhitungan bull bear
bullJKSE=zeros(574,1);
bullSH=zeros(574,1);
bullSG=zeros(574,1);
bearJKSE=zeros(574,1);
bearSH=zeros(574,1);
bearSG=zeros(574,1);

%variabel total bull dan bear
tbullJKSE=0;
tbullSH=0;
tbullSG=0;
tbearJKSE=0;
tbearSH=0;
tbearSG=0;
%bull bear JKSE
for i=1:574
    if ProbabilityJKSE(i,1)>0.5
        bullJKSE(i)=1;
        tbullJKSE=tbullJKSE+1;
    else
        bearJKSE(i)=1;
        tbearJKSE=tbearJKSE+1;
    end
end

%bull bear SH
for i=1:574
    if ProbabilitySH(i,1)>0.5
        bullSH(i)=1;
        tbullSH=tbullSH+1;
    else
        bearSH(i)=1;
        tbearSH=tbearSH+1;
    end
end

%bull bear SG
for i=1:574
    if ProbabilitySG(i,1)>0.5
        bullSG(i)=1;
        tbullSG=tbullSG+1;
    else
        bearSG(i)=1;
        tbearSG=tbearSG+1;
    end
end

%perhitungan total keadaan sama ketiga saham
samabull=zeros(size(bullJKSE));
samabear=zeros(size(bullJKSE));
tdksamabull=zeros(size(bullJKSE));
tdksamabear=zeros(size(bullJKSE));
Tsamabull=0;
Tsamabear=0;
Ttdksamabull=0;
Ttdksamabear=0;

%sama bull
for i=1:574
    if bullJKSE(i)&&bullSH(i)&&bullSG(i)==1
        samabull(i)=1;
        Tsamabull=Tsamabull+1;
    else
        tdksamabull(i)=1;
        Ttdksamabull=Ttdksamabull+1;
    end
end
   
%sama bear
for i=1:574
    if bearJKSE(i)&&bearSH(i)&&bearSG(i)==1
        samabear(i)=1;
        Tsamabear=Tsamabear+1;
    else
        tdksamabear(i)=1;
        Ttdksamabear=Ttdksamabear+1;
    end
end

%ploting bull ketiga saham
subplot(2,1,1);
plot(samabull,'.')
title('Waktu Bull Ketiga Saham');
xlabel('Time');
ylim([0.1 1.1]);
xlim([0 600]);


%ploting bear ketiga saham
subplot(2,1,2);
plot(samabear,'.')
title('Waktu Bear Ketiga Saham');
xlabel('Time');
ylim([0.1 1.1]);
xlim([0 600]);


rmpath('m_Files');