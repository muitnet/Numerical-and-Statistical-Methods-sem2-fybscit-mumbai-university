function[i]=simpsons38(a,b,n,f)
h=(b-a)/n;
x=(a:h:b);
y=f(x);
m=length(y);
i=y(1)+y(m);
for j=2:m-1
if(modulo(j-1,3)==0)then
i=i+2*y(j);
else
i=i+3*y(j);
end;
end;
i=(3*h/8)*i;
return(i);
endfunction
deff('[y]=f(x)','y=4+2*sin(x)')
simpsons38(0,%pi,6,f)

