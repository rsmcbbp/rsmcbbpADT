function temp=RingtempSearch(name,year)
%对流环最低云顶温度，选取了8个区间，各自算出最低值后取平均
if nargin==1
    year=2100;
end
P=strcat(name,'.jpg');
y=imread(P);
%以（256,256）作为中点，上、下、左、右各延伸出4个区间
y=y(201:300,201:300);
left=max(y(56,1:56));
right=max(y(56,56:100));
up=max(y(1:56,56));
down=max(y(56:100,56));
temp1=mean([left right up down]);
%以Eyelocation算得的真实台风中心作为中点，上、下、左、右各延伸出4个区间
[X Y]=Eyelocation(name);
left=max(y(X-200,1:56));
right=max(y(X-200,56:100));
up=max(y(1:56,Y-200));
down=max(y(56:100,Y-200));
temp2=mean([left right up down]);

temp=mean([temp1 temp2]);%计算平均值

%由于不同卫星的差异，对year<2005的计算结果加上15（测算出的结果），以与year>=2005的台风匹配
if year<2005
    temp=temp+15;
end


    
