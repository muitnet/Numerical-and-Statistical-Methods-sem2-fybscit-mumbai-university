x=[1,2,3,4,5,6,7];
y=[0.5,2.5,2,4,3.5,6,5.5];
n=7;
s=0;
xsq=0;
xsum=0;
ysum=0;
for i =1.7
s=s+(det(x(1,i)))*(det(y(1,i)));
xsq=xsq+(det(x(1,i))^2);
xsum=xsum+det(x(1,i));
ysum=ysum+det(y(1,i));
end
disp(s,"sum of product of x and y=")
disp(xsq,"sum of square of x=")
disp(xsum,"sum of all the x=")
disp(ysum,"sum of all the y=")
a=xsum/n;
b=xsum/n;
a1=(n*s-xsum*ysum)/(n*xsq-xsum^2);
a0=b-a*a1;
disp(a1,"a1=")
disp(a0,"a0=")
disp("The equation of the line obtained is y=a0+a1*x")

