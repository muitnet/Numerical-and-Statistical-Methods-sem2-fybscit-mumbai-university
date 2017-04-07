clear;
n=3;
es=0.5*(10^(2-n));
x=0.5;
f(1)=1; //first estimate f=e^x=1
ft=1.648721; //true value of e^0.5=f
et(1)=(ft-f(1))*100/ft;
ea(1)=100;
i=2;
while ea(i-1)>=es
    f(i)=f(i-1)+(x^(i-1)) //(factorial(i-1));
    et(i)=(ft-f(i))*100/ft;
    ea(i)=(f(i)-f(i-1))*100/f(i);
    i=i+1;
end
for j=1:i-1
    disp(ea(j),"approximate estimate of error(%)="et(j),"true % frelative error=",f(j),"result=",j,term number=)
    disp(".....................................")
end
