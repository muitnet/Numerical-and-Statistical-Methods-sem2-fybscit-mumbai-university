function[i]=simpsons13(a,b,n,f)
h=(b-a)/n;
x=(a:h:b);
y=f(x);
m=length(y);
i=y(1)+y(m);
for j=2:m-1;
if(modulo(j,2)==0)then
i=i+4*y(j);
else
i=i+2*y(j);
end;
end;
i=(h/3)*i;
return(i);
endfunction
deff('[y]=f(x)','y=exp(x)')
simpsons13(0,4,4,f)

