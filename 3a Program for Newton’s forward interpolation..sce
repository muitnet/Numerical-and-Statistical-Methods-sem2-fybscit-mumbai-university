clc;clear;close
x=[1 3 5 7];
y=[24 120 336 720];
h=2
c=1;
for i=1:3
    d1(c)=y(i+1)-y(i);
    c=c+1;
end
c=1;
for i=1:2
    d2(c)=d1(i+1)-d1(i);
    c=c+1;
   end
   c=1;
   for i=1:1
       d3(c)=d2(i+1)-d2(i);
       c=c+1;
   end
d=[d1(1) d2(1) d3(1)];
x0=8;
pp=1;
y_x=y(1);
p=(x0-1)/2;
for i=1:3
    pp=1;
    for j=1:i
        pp=pp*(p-(j-1))
end
y_x=y_x+(pp*d(i))/factorial(i);
end
printf('value of function at %f is:%f',lx0,y_x);

