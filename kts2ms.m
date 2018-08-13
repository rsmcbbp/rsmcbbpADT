function [ms ji]=kts2ms(kts);
%将一分钟平均风速kts转化为两分钟平均风速m/s
if kts<=65
    ms=kts/2;
else
    ms=(kts+20)/2.6;
end
ms=round(ms);

if ms<8.0
    ji=4;
elseif (ms>=8.0)&(ms<10.8)
    ji=5;
elseif (ms>=10.8)&(ms<13.9)
    ji=6;  
elseif (ms>=13.9)&(ms<17.2)
    ji=7;      
elseif (ms>=17.2)&(ms<20.8)
    ji=8;      
elseif (ms>=20.8)&(ms<24.5)
    ji=9;  
elseif (ms>=24.5)&(ms<28.5)
    ji=10;    
elseif (ms>=28.5)&(ms<32.7)
    ji=11;
elseif (ms>=32.7)&(ms<37.0)
    ji=12;  
elseif (ms>=37.0)&(ms<41.4)
    ji=13;      
elseif (ms>=41.4)&(ms<46.2)
    ji=14;    
elseif (ms>=46.2)&(ms<51.0)
    ji=15;   
elseif (ms>=51.0)&(ms<56.1)
    ji=16;     
elseif (ms>=56.1)&(ms<61.2)
    ji=17;    
elseif ms>=61.2
    ji=18;   %17级以上
end
