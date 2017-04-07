clc;clear;close
x=[15 20 25 30 35 40];
y=[0.2588190 0.3420201 0.4226183 0.5 0.5735764 0.6427876];
h=5
c=1;
for i=1:5
    d1(c)=y(i+1)-y(i);
    c=c+1;
end
c=1;
for i=1:4
    d2(c)=d1(i+1)-d1(i);
    c=c+1
end
c=1;
for i=1:3
    d3(c)=d2(i+1)-d2(i);
    c=c+1;
end
c=1;
for i=1:2
    d4(c)=d3(i+1)-d3(i);
    c=c+1;
end
c=1;
for i=1:1
    d5(c)=d4(i+1)-d4(i);
    c=c+1 ;
end
d=[d1(5) d2(4) d3(3) d2(2) d1(1)];
x0=38;
pp=1;
y_x=y(6);
p=(x0-x(6))/h;
for i=1:5
    pp=1;
    for j=1:i
        pp=pp*(p-(j-1))
    end
    y_x=y_x+(pp*d(i))/factorial(i);
end
printf('value of function at %f is:%f',x0,y_x);

