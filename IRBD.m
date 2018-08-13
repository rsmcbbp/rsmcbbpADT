function BD=IRBD(name,year)
%���Ѵ��ڵ�IR-BWͼƬת��ΪIR-BD.����name���֣�yearΪ��Ӧ��ݡ������BDͼƬ
if nargin==1
    year=2100;
end
P=strcat(name,'.jpg');
BD=imread(P);
%���潨����Ӧ��ϵ����ÿ��������ת��
%��2005���Ժ����ͼ
if year>=2005
   for i=1:numel(BD)
        if BD(i)<140
            BD(i)=20;
        elseif (BD(i)>=140)&(BD(i)<200)
            BD(i)=230;
        elseif (BD(i)>=200)&(BD(i)<213)
            BD(i)=60;
        elseif (BD(i)>=213)&(BD(i)<223)
            BD(i)=110;
        elseif (BD(i)>=223)&(BD(i)<231)
            BD(i)=150;
        elseif (BD(i)>=231)&(BD(i)<235)
            BD(i)=0;
        elseif (BD(i)>=235)&(BD(i)<239)
            BD(i)=250;
        elseif (BD(i)>=239)&(BD(i)<242)
            BD(i)=130;
        elseif BD(i)>=242
            BD(i)=90;
        end
   end
   %��2005����ǰ����ͼ
elseif year<2005  
    for i=1:numel(BD)
        if BD(i)<115
            BD(i)=20;
        elseif (BD(i)>=115)&(BD(i)<175)
            BD(i)=230;
        elseif (BD(i)>=175)&(BD(i)<193)
            BD(i)=60;
        elseif (BD(i)>=193)&(BD(i)<207)
            BD(i)=110;
        elseif (BD(i)>=207)&(BD(i)<217)
            BD(i)=150;
        elseif (BD(i)>=217)&(BD(i)<220)
            BD(i)=0;
        elseif (BD(i)>=220)&(BD(i)<224)
            BD(i)=250;
        elseif (BD(i)>=224)&(BD(i)<227)
            BD(i)=130;
        elseif BD(i)>=227
            BD(i)=90;
        end
    end
end
