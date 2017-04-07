function [y]=f(a, b)
y=b-a;
endfunction
x0=0;
y0=2;
h=0.1;
for n=1:4
k1=h*f(x0,y0);
k2=h*f(x0+h,y0+k1);
y0=y0+(k1+k2)/2;
x0=x0+h;
printf('values of x0=%g\t and y0=%g\n',x0,y0);
end

function [y]=f(a, b)
y=b-a;
endfunction
x0=0;
y0=1;
h=0.25;
for n=1:4
k1=h*f(x0,y0);
k2=h*f(x0+h/2,y0+k1/2);
k3=h*f(x0+h/2,y0+k2/2);
k4=h*f(x0+h,y0+k3);
y0=y0+(k1+2*k2+2*k3+k4)/6;
x0=x0+h;
printf('values of x0=%g\t and y0=%g\n',x0,y0);
end

