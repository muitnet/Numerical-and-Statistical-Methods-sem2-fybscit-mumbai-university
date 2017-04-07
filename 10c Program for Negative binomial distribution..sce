function [expfre]=negbinfit(x, obsfre)
n=length(x)-1;
N=sum(obsfre);
xbar=sum(x*obsfre')/N;
rawmom2=sum(obsfre*(x^2)')/N;
var=rawmom2-xbar^2;
p=xbar/var;
q=1-p;
r=round(p*xbar/q);
prob(1)=p^r;
for i=1:n
prob(i+1)=((i+1+r)/(i-1+1))*q*prob(i)
end
printf('expected frequencies\n');
printf('------------------------------\n');
expfre=round(prob*N);
return(expfre);
endfunction
x=[0,1,2,3,4,5];
obsfre=[12,50,100,80,45,5];
negbinfit(x,obsfre)

