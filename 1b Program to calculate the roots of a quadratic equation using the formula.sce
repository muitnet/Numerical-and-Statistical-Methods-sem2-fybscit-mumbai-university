
responce=1;
while responce==1
    a=input("input the value of a:")
    b=input("input the value of b:")
    c=input("input the value of c:")
    if a==0  then
        if b~=0 then
            r1=-c/b;
            disp(r1,"the root:")
            else disp("trival solution")
        end
        else
        discr=b^2-4*a*c;
        if discr>=0 then
            r1=(-b+sqrt(discr))/(2*a);
            r2=(-b-sqrt(discr))/(2*a);
            disp(r2,"and",r1,"the roots are:")
                    else
            r1=-b/(2*a)
            r2=r1;
            i1=sqrt(abs(discr))/(2*a);
            i2=i1;
            disp(r2+i2*sqrt(-1),r1+i1*sqrt(-1),"the roots are:")
        end
    end
    responce=input("do you want to continue (press 1 for yes and 2 if responce=2 then exit;)")
end
end
end
