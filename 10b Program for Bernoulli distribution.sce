function [expfre]=bernfit(x, obsfre)
n=length(x)-1;
N=sum(obsfre);
xbar=sum(x*obsfre')/N;
p=xbar/n;
q=1-p;
for r=0:n
prob(r+1)=p^r*q^(n-r);
end	
expfre=round(prob*N);
printf('expected frequencies\n');
printf('------------------------------\n');
return(expfre);
endfunction
x=[0,1];
obsfre=[12,25];
bernfit(x,obsfre)

