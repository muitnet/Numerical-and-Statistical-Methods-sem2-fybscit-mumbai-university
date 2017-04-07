function [y10]=eularmod(x0, y0, h, n, f)
x1=x0+h;
y10=y0+h*f(x0,y0)
while(n>1)
x0=x0+h;
x1=y10;
y10=y0+(h/2)*(f(x0,y0)+f(x1,y10));
if(abs(y10-x1)<0.001)
y10
abort;
end
n=n-1;
y10
end
endfunction
deff('[y]=f(a,b)','y=log(a+b)');
eularmod(1,2,0.2,10,f)

