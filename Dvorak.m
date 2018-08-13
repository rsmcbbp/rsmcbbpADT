function [DT Eye Ring]=Dvorak(name,year)
%德沃夏克分析法，输出的三项分别为DT值，Eye对应的级别值，Ring对应的级别值
if nargin==1
    year=2100;
end
P=strcat(name,'.jpg');
image=imread(P);
%将云图转为BD模式
BDimage=IRBD1(image,year);

%判断风眼级别
[Eyex,Eyey]=Eyelocation(name,year);%用Eyelocation定位风眼中心
Eye0=BDimage(Eyex,Eyey);%在BDimage中找到风眼位置
Eye=Eyecheck(Eye0);%用Eyecheck函数判断其属于什么级别

%用Ringcheck函数判断对流环级别
Ring=Ringcheck(name,year);

%下面是德法对应表。
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
                DT='不适宜使用此分析法';
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
                DT='不适宜使用此分析法';
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
                DT='不适宜使用此分析法';
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
                DT='不适宜使用此分析法';
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
                DT='不适宜使用此分析法';
        end
    case 3
        switch Eye
            case {0,1}
                DT=4.5;
            case {2,3}
                DT=4.0;
            case {4,5,6,7,8}
                DT='不适宜使用此分析法';
        end
    case 2
        switch Eye
            case {0,1}
                DT=4.5;
            case 2
                DT=4.0;
            case {3,4,5,6,7,8}
                DT='不适宜使用此分析法';
        end
    case 1
        switch Eye
            case 0
                DT=4.0;
            case 1
                DT=3.5;
            case {2,3,4,5,6,7,8}
                DT='不适宜使用此分析法';
        end
end
        
                



