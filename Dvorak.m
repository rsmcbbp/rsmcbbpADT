function [DT Eye Ring]=Dvorak(name,year)
%�����Ŀ˷����������������ֱ�ΪDTֵ��Eye��Ӧ�ļ���ֵ��Ring��Ӧ�ļ���ֵ
if nargin==1
    year=2100;
end
P=strcat(name,'.jpg');
image=imread(P);
%����ͼתΪBDģʽ
BDimage=IRBD1(image,year);

%�жϷ��ۼ���
[Eyex,Eyey]=Eyelocation(name,year);%��Eyelocation��λ��������
Eye0=BDimage(Eyex,Eyey);%��BDimage���ҵ�����λ��
Eye=Eyecheck(Eye0);%��Eyecheck�����ж�������ʲô����

%��Ringcheck�����ж϶���������
Ring=Ringcheck(name,year);

%�����ǵ·���Ӧ��
switch Ring
    case 8
        switch Eye
            case 0
                DT=8.0;
            case {1,2}
                DT=7.0;
            case {3,4}
                DT=6.5;
            case {5,6}
                DT=6.0;
            case {7,8}
                DT='������ʹ�ô˷�����';
        end
    case 7
        switch Eye
            case 0
                DT=7.5;
            case {1,2}
                DT=7.0;
            case {3,4}
                DT=6.5;
            case 5
                DT=6.0;
            case {6,7,8}
                DT='������ʹ�ô˷�����';
        end
    case 6
        switch Eye
            case 0
                DT=7.0;
            case {1,2}
                DT=6.5;
            case {3,4}
                DT=6.0;
            case {5}
                DT=5.0;
            case {6,7,8}
                DT='������ʹ�ô˷�����';
        end
    case 5
        switch Eye
            case 0
                DT=6.5;
            case 1
                DT=6.0;
            case {2,3}
                DT=5.5;
            case {4,5}
                DT=5.0;
            case {6,7,8}
                DT='������ʹ�ô˷�����';
        end
    case 4
        switch Eye
            case 0
                DT=5.5;
            case {1,2}
                DT=5.0;
            case {3,4}
                DT=4.5;
            case {5,6,7,8}
                DT='������ʹ�ô˷�����';
        end
    case 3
        switch Eye
            case {0,1}
                DT=4.5;
            case {2,3}
                DT=4.0;
            case {4,5,6,7,8}
                DT='������ʹ�ô˷�����';
        end
    case 2
        switch Eye
            case {0,1}
                DT=4.5;
            case 2
                DT=4.0;
            case {3,4,5,6,7,8}
                DT='������ʹ�ô˷�����';
        end
    case 1
        switch Eye
            case 0
                DT=4.0;
            case 1
                DT=3.5;
            case {2,3,4,5,6,7,8}
                DT='������ʹ�ô˷�����';
        end
end
        
                



