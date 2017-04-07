function [expfre]=binfit(x, obsfre)
n=length(x)-1;
N=sum(obsfre);
xbar=sum(x*obsfre')/N;
p=xbar/n;	
q=1-p;
for r=0:n
prob(r+1)=factorial(n)*p^r*q^(n-r)/(factorial(r)*factorial(n-r));
end
expfre=round(prob*N);
printf('expected frequencies\n');
printf('------------------------------\n');
return(expfre);
endfunction
x=[0,1,2,3,4,5];
obsfre=[12,25,36,21,10,8];
binfit(x,obsfre)

