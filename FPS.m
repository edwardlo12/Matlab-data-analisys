KCF=fopen('time.txt')
data_KCF=textscan(KCF,'%f')
M_KCF=mean(data_KCF{1})

MKCF1=fopen('time1.txt')
data_MKCF1=textscan(MKCF1,'%f')
M_MKCF1=mean(data_MKCF1{1})

MKCF2=fopen('time2.txt')
data_MKCF2=textscan(MKCF2,'%f')
M_MKCF2=mean(data_MKCF2{1})

MKCF3=fopen('time3.txt')
data_MKCF3=textscan(MKCF3,'%f')
M_MKCF3=mean(data_MKCF3{1})

MKCF4=fopen('time4.txt')
data_MKCF4=textscan(MKCF4,'%f')
M_MKCF4=mean(data_MKCF4{1})


fps=[M_KCF;M_MKCF1;M_MKCF2;M_MKCF3;M_MKCF4]
% name={'KCF';'MKCF1';'MKCF2';'MKCF3';'MKCF4'}

fid=fopen('opt.txt','w')
fprintf(fid,'%6s %6s %6s %6s %6s \n','KCF','MKCF1','MKCF2','MKCF3','MKCF4');
fprintf(fid,'%2.3f %2.3f %2.3f %2.3f %2.3f \n',fps);
fclose(fid)


