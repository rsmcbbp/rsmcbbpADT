function y=EyeIndex(name,year)
%��������Ƿ���գ��ѷ��۷�Χ������¶ȶ�Ӧ��class�ĸ�������ԡ����۷�Χ���ĸ����
if nargin==1
    year=2100;
end
[Eyex Eyey]=Eyelocation(name,year);
[a y1 y2 b c d e]=Eyediameter(name,year);%bcde�Ǵ�Eyediameter�����ж�ȡ��,���Ƿ��۷�Χ��,�Է���Ϊ�����������ҵĸ����
P=strcat(name,'.jpg');
image=imread(P);
BDimage=IRBD1(image,year);
class=Eyecheck(BDimage(Eyex,Eyey));
image=BDimage(b+200:c+200,d+200:e+200);%��ȡ���Ƿ��۵ľ�������

for i=1:numel(image)
    image(i)=Eyecheck(image(i));
    %��Eyecheck������BD�ĻҶ�ֵת��Ϊ�����Ӧ������ֵ
end

u=0;
for i=1:numel(image)
    if image(i)==class
        u=u+1;%��������bcde���ɵľ��η�Χ�ڣ�ͳ������ۼ�����ͬ�ĸ����
    end
end

y=u/((c-b)*(e-d));%EyeIndex����Ϊ�������bcde���ɵľ�������ı�ֵ

