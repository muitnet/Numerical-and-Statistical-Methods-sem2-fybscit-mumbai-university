y=[4 12 19];
x=[1 3 4];
y_x=7;
Y_X=0;
poly(0,'y');
for i=1:3
 p=x(i);
 for j=1:3
  if i~=j then
  p=p*((y_x-y(j))/(y(i)-y(j)))
  end
  end
 Y_X=Y_X+p;
end
disp(Y_X,'Y_X=');

