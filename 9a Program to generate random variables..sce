a=3;
x=27;
c=2;
m=10;
for i=0:m
xi=modulo((a*x+c),m)
printf("%f,",xi/m)
x=xi
end

