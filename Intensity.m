function [knot ms]=Intensity(name,year)
%将DT转为具体强度数字。如输出变量为1，则以kts为单位输出；若为2，则以kts与m/s为单位分别输出
if nargin==1
    year=2100;
end
DT=Dvorak(name,year);
switch DT
    case 8.0
        knot=170;ms=75;
    case 7.5
        knot=155;ms=68;
    case 7.0
        knot=140;ms=62;
    case 6.5
        knot=127;ms=55;
    case 6.0
        knot=115;ms=50;
    case 5.5
        knot=102;ms=45;
    case 5.0
        knot=90;ms=42;
    case 4.5
        knot=77;ms=38;
    case 4.0
        knot=65;ms=33;
    case 3.5
        knot=55;ms=28;
    case 3.0
        knot=45;ms=23;
    case 2.5
        knot=35;ms=18;
    case 2.0
        knot=30;ms=15;
    case 1.5
        knot=25;ms=12;
    case '不适宜使用此分析法'
        knot=-inf;ms=-inf;
end