deff('y=f(x)','y=x^3-2*x-5');
a=2,b=3; //f(2) is negative and f(3) is positive
d=0.00001; // for accuracy of root
printf('successive iterations \ta \tb \t f(a) \t f(b) \tx1 \n')
for i=1:25
    x1=b*f(a)/(f(a)-f(b))+a*f(b)/(f(b)-f(a))
    if (f(a)*f(x1))>0
        b=x1;
    else
        a=x1;
end
if abs(f(x1))<d
    break
end
printf('\t%f %f %f %f %f\n',a,b,f(a),f(b),x1);
end
printf(' the root of equation %f',x1);

