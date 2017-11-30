hold off

h=figure(1)

% =========ground_init=====================
ground=fopen('groundtruth_rect.txt');
c=textscan(ground,'%f','delimiter',',');
data_ground=reshape(c{1},4,[])';
[row col]=size(data_ground);
mid_x=data_ground(:,1)+data_ground(:,3)/2; 
mid_y=data_ground(:,2)+data_ground(:,4)/2;
%ground_r=mid_x.^2+mid_y.^2;


% =========KCF=======================
KCF=fopen('KCF.txt');
d=textscan(KCF,'%f','delimiter',',');
data_KCF=reshape(d{1},2,[])';

x=data_KCF(:,1);
y=data_KCF(:,2);

%KCF_r=x.^2+y.^2;
com_r_x=abs(mid_x-x);
com_r_y=abs(mid_y-y);

for thrashold=1:1:50
    count=0;
    for i=1:row
        if com_r_x(i)<= thrashold
            if com_r_y(i)<= thrashold
                count=count+1;
            end
        end
    end
    persent(1,thrashold)=thrashold
    persent(2,thrashold)=count/row

end
plot(persent(1,:),persent(2,:),'-x','DisplayName','KCF')
% =========KCF_end================

hold on

%clear persent count com_r x y d


% =========MKCF_1=======================
MKCF_1=fopen('MKCF1.txt');
d=textscan(MKCF_1,'%f','delimiter',',');
data_MKCF_1=reshape(d{1},2,[])';

x=data_MKCF_1(:,1);
y=data_MKCF_1(:,2);

%MKCF_3_r=x.^2+y.^2;
com_r_x=abs(mid_x-x);
com_r_y=abs(mid_y-y);

for thrashold=1:1:50
    count=0;
    for i=1:row
        if com_r_x(i)<= thrashold
            if com_r_y(i)<= thrashold
                count=count+1;
            end
        end
    end
    persent(1,thrashold)=thrashold
    persent(2,thrashold)=count/row

end
plot(persent(1,:),persent(2,:),'-x','DisplayName','MKCF1')
% =========MKCF_1_end================

% =========MKCF_2=======================
MKCF_2=fopen('MKCF2.txt');
d=textscan(MKCF_2,'%f','delimiter',',');
data_MKCF_2=reshape(d{1},2,[])';

x=data_MKCF_2(:,1);
y=data_MKCF_2(:,2);

%MKCF_3_r=x.^2+y.^2;
com_r_x=abs(mid_x-x);
com_r_y=abs(mid_y-y);

for thrashold=1:1:50
    count=0;
    for i=1:row
        if com_r_x(i)<= thrashold
            if com_r_y(i)<= thrashold
                count=count+1;
            end
        end
    end
    persent(1,thrashold)=thrashold
    persent(2,thrashold)=count/row

end
plot(persent(1,:),persent(2,:),'-x','DisplayName','MKCF2')
% =========MKCF_2_end================

% =========MKCF_3=======================
MKCF_3=fopen('MKCF3.txt');
d=textscan(MKCF_3,'%f','delimiter',',');
data_MKCF_3=reshape(d{1},2,[])';

x=data_MKCF_3(:,1);
y=data_MKCF_3(:,2);

%MKCF_3_r=x.^2+y.^2;
com_r_x=abs(mid_x-x);
com_r_y=abs(mid_y-y);

for thrashold=1:1:50
    count=0;
    for i=1:row
        if com_r_x(i)<= thrashold
            if com_r_y(i)<= thrashold
                count=count+1;
            end
        end
    end
    persent(1,thrashold)=thrashold
    persent(2,thrashold)=count/row

end
plot(persent(1,:),persent(2,:),'-x','DisplayName','MKCF3')
% =========MKCF_3_end================

% =========MKCF_4=======================
MKCF_4=fopen('MKCF4.txt');
d=textscan(MKCF_4,'%f','delimiter',',');
data_MKCF_4=reshape(d{1},2,[])';

x=data_MKCF_4(:,1);
y=data_MKCF_4(:,2);

%MKCF_4_r=x.^2+y.^2;
com_r_x=abs(mid_x-x);
com_r_y=abs(mid_y-y);

for thrashold=1:1:50
    count=0;
    for i=1:row
        if com_r_x(i)<= thrashold
            if com_r_y(i)<= thrashold
                count=count+1;
            end
        end
    end
    persent(1,thrashold)=thrashold
    persent(2,thrashold)=count/row

end
plot(persent(1,:),persent(2,:),'-x','DisplayName','MKCF4')
% =========MKCF_4_end================

legend('show','Location','southeast')

 saveas(h,'persent.jpg')       