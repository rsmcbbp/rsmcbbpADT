function [D wx wy b c d e]=Eyediameter(name,year)
%风眼直径判断，D输出风眼直径，wx输出纬度方向的直径，wy输出经度方向的直径
if nargin==1
    year=2100;
end
[Eyex Eyey]=Eyelocation(name,year);
P=strcat(name,'.jpg');
image=imread(P);
BDimage=IRBD1(image,year);
class=Eyecheck(BDimage(Eyex,Eyey));
if Eyecheck(BDimage(256,256))==class
    T=1;
else
    T=0;
end
image=BDimage(201:300,201:300);

for i=1:numel(image)
    image(i)=Eyecheck(image(i));
end

for i=1:numel(image)
    if image(i)<=class+1
        image(i)=class;
    end
end

if T==1
%纬
for i=56:-1:1
    if image(56,i)~=class
        if all(image(56,i:-1:i-5)~=class)
            b=i;break;
        end
    end
end
for i=56:100
    if image(56,i)~=class
        if all(image(56,i:i+5)~=class)
            c=i;break;
        end
    end
end
wx=(c-b-1)/20;

%经
for i=56:-1:1
    if image(i,56)~=class
        if all(image(i:-1:i-5,56)~=class)
            d=i;break;
        end
    end
end
for i=56:100
    if image(i,56)~=class
        if all(image(i:i+5,56)~=class)
            e=i;break;
        end
    end
end
wy=(e-d-1)/20;

elseif T==0
    Eyex=Eyex-200;Eyey=Eyey-200;
for i=Eyex:-1:1
    if image(Eyex,i)~=class
        if all(image(Eyex,i:-1:i-5)~=class)
            b=i;break;
        end
    end
end
for i=Eyex:100
    if image(Eyex,i)~=class
        if all(image(Eyex,i:i+5)~=class)
            c=i;break;
        end
    end
end
wx=(c-b-1)/20;

%经
for i=Eyey:-1:1
    if image(i,Eyey)~=class
        if all(image(i:-1:i-5,Eyey)~=class)
            d=i;break;
        end
    end
end
for i=Eyey:100
    if image(i,Eyey)~=class
        if all(image(i:i+5,Eyey)~=class)
            e=i;break;
        end
    end
end
wy=(e-d-1)/20;
end    
            
D=(wx+wy)/2;            
