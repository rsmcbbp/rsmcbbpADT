function [eyetemp stringtemp]=Temp(name)
%读取风眼温度对应的灰度值与CDO最低云顶温度对应的灰度值
P=strcat(name,'.jpg');
X=imread(P);%读取云图
X=X(241:270,241:270); %截取中心密集云区的核心部分
eyetemp=min(min(X)); %求出风眼最高温度（最低灰度值）
stringtemp=max(max(X)); %求出CDO最低云顶温度（最高灰度值）

