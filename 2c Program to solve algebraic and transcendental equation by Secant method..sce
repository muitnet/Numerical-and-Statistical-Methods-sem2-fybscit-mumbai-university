deff('y=f(x)','y=x^3-2*x-5');
x1=2,x2=3
n=1;
c=0;
printf('successive iterations\tx1\tx2\tx3\tf(x3)\n')
while n==1
x3=(x1*f(x2)-x2*f(x1))/(f(x2)-f(x1));
printf('\t%f\t%f\t%f\t%f\n',x1,x2,x3,f(x3));
if f(x3)*f(x1)>0 then
x2=x3;
else
x1=x3;
end
if abs(f(x3))<0.000001 then
break;
end
c=c+1;
end
printf('the root of the equation after %i iteration is:%f',c,x3)
