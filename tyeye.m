function minus=tyeye(name)
P=strcat(name,'.jpg');
X=imread(P);
X=X(241:270,241:270);
eyetemp=min(min(X));
stringtemp=max(max(X));
minus=stringtemp-eyetemp;

