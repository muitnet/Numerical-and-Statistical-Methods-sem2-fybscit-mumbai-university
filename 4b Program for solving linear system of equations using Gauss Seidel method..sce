function [X]=gaussseidel(A, n, N, X, b)
L=A;
U=A;
D=A;
for i=1:1:n
for j=1:1:n
if j>i then L(i,j)=0;
D(i,j)=0;
end
if i>j then U(i,j)=0
D(i,j)=0;
end
if i==j then Ls(i,j)=0;
end
end
end
for k=1:1:N
X=(D+L)^-1*(-U*X+b);
disp(X)
end
endfunction
A=[2 -1 0; -1 2 -1; 0 -1 2]
b=[7;1;1]
N=3;
n=3;
X=[0;0;0]
gaussseidel(A,n,N,X,b)

