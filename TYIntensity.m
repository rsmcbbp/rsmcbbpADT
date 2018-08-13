function int=TYIntensity(name,year)
if nargin==1
    year=2100;
end

Intensity_DT=Intensity(name,year);
Ringtemp=RingtempSearch(name,year);
[Ringwidth_in Ringwidth_out]=RingIndex(name,year);
[RingVar1 RingVar2]=RingVar(name,year);
[~,~,Eyetemp]=Eyelocation(name,year);Eyetemp=double(Eyetemp);
EyeDiameter=Eyediameter(name,year);
EyeMinus=Eyeminus(name,year);
EyeIndex0=EyeIndex(name,year);
EyeIndex1=EyeIndex2(name,year);
RingWidth=Ringwidth_in*Ringwidth_out;
Ringvar=min([RingVar1 RingVar2]);
Eyeindex=EyeIndex1+EyeIndex0;

int=-260.6268+0.6666*Intensity_DT-6.4119*EyeDiameter+8.3423*EyeMinus...
    -0.1504*Eyetemp+5.8872*Eyeindex+1.3164*Ringtemp+4.8054*RingWidth-9.3103*Ringvar;
