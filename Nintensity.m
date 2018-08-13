function int=Nintensity(name)
%探索过程中构建的naive intensity function,用读取到的最高灰度值与最低灰度值相减再加上15,但当台风强度低于140kt后就失准了
[eyetemp stringtemp]=Temp(name)
int=stringtemp-eyetemp+15;