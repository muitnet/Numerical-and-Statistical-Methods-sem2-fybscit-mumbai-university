function [Y0]=eular(X0, Y0, h, yest, f)
    n=(yest-X0)/h
    for i=1:n
        Y0=Y0+f(X0,Y0)*h;
        X0=X0+h;
        disp(Y0)
    end;
endfunction
deff('[y]=f(a,b)','y=b-a*b+a');
eular(0,1,0.2,1,f)

