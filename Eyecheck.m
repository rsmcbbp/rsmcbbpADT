function Eye=Eyecheck(Eye0)
%对BD化以后的风眼点，判断其色阶
if Eye0==90
    Eye=8;
elseif Eye0==130
    Eye=7;
elseif Eye0==250
    Eye=6;
elseif Eye0==0
    Eye=5;
elseif Eye0==150
    Eye=4;
elseif Eye0==110
    Eye=3;
elseif Eye0==60
    Eye=2;
elseif Eye0==230
    Eye=1;
elseif Eye0==20
    Eye=0;
end

    