function Eye=AntiEyecheck(Eye0)
%对BD化以后的风眼点，判断其色阶的反过程
if Eye0==8
    Eye=90;
elseif Eye0==7
    Eye=130;
elseif Eye0==6
    Eye=250;
elseif Eye0==5
    Eye=0;
elseif Eye0==4
    Eye=150;
elseif Eye0==3
    Eye=110;
elseif Eye0==2
    Eye=60;
elseif Eye0==1
    Eye=230;
elseif Eye0==0
    Eye=20;
end
