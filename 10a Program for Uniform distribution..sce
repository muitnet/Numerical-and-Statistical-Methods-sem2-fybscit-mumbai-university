function [expfre]=unifit(x, obsfre)
n=length(x)-1;
N=sum(obsfre);
xbar=sum(x*obsfre')/N;
prob(1)=1/(n+1);
for r=0:n
prob(r+1)=1/(n+1);
end	
expfre=round(prob*N);
printf('expected frequencies\n');
printf('------------------------------\n');
return(expfre);
endfunction
x=[0,1,2,3,4,5];
obsfre=[12,50,100,80,45,5];
unifit(x,obsfre)

