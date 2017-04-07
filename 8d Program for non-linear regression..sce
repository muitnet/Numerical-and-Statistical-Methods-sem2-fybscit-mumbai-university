x=[0.25,0.75,1.25,1.75,2.25];
y=[0.25,0.57,0.68,0.74,0.79];
a0=1
a1=1;
sr=0.0248;
for i=1:5
    pda0(i)=1-exp(-a1*x(i));
    pda1(i)=a0*x(i)*exp(-a1*x(i));
end
Z0=[pda0(1),pda1(1);pda0(2),pda1(2);pda0(3),pda1(3);pda0(4),pda1(4);pda0(5),pda1(5)]
disp(Z0,"Z0=")
R=Z0'*Z0;
S=inv(R);
for i=1:5
    y1(i)=a0*(1-exp(a1*x(i)));
    D(i)=y(i)-y1(i);
end
disp(D,"D=")
M=Z0'*D;
X=S*M;
disp(X,"X=")
a0=a0+det(X(1,1));
a1=a1+det(X(2,1));
disp(a0,"The value of a0 after 1st iteration=")
disp(a1,"The value of a1 after 1st iteration")

