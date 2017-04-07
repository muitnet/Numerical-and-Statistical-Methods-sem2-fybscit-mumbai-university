x=[0,1,2,3,4,5];
y=[2.1,7.7,13.6,27.2,40.9,61.1];
sumy=0;
sumx=0;
m=2;
n=6;
s=0;
xsqsum=0;
xcsum=0;
x4sum=0;
xysum=0;
x2ysum=0;
rsum=0;
usum=0;
for i=1:6
    sumy=sumy+y(i);
  sumx=sumx+x(i);
  r(i)=(y(i)-s/n)^2;
   xsqsum=xsqsum+x(i)^2;
   xcsum=xcsum+x(i)^3;
  x4sum=x4sum+x(i)^4;
  xysum=xysum+x(i)*y(i);
  x2ysum=x2ysum+y(i)*x(i)^2;
  rsum=r(i)+rsum;   
end
disp(sumy,"sum y=")
disp(sumx,"sum x")
xavg=sumx/n;
yavg=sumy/n;
disp(xavg,"xavg=")
disp(yavg,"yavg=")
disp(xsqsum,"sum x^2=")
disp(xcsum,"sum x^3=")
disp(x4sum,"sum x^4=")
disp(xysum,"sum x*y=")
disp(x2ysum,"sum x^2*y=")
J=[n,sumx,xsqsum;sumx,xsqsum,xcsum;xsqsum,xcsum,x4sum];
I=[sumy;xysum;x2ysum];
X=inv(J)*I;
a0=det(X(1,1));
a1=det(X(2,1));
a2=det(X(3,1));
for i=1:6
    u(i)=(y(i)-a0-a1*x(i)-a2*x(i)^2)^2;
    usum=usum+u(i);
end
disp(r,"(yi-yavg)^2=")
disp(u,"(yi-a0-a1*x-a2*x^2)^2=")
plot(x,y);
xtitle('x vs y','x','y');
syx=(usum/(n-3))^0.5;
disp(syx,"The standard error of the estimate based on regression polynomial=")
R2=(rsum-usum)/(rsum);
disp("%",R2*100,"Percentage of original uncertainty that has been explained by the model=")

