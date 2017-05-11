function B1 = SR1(x0,x1,df0,df1,B0)
   
    s=x1-x0;
    y=df1-df0;
    t=y-B0*s;
    B1=B0 + (t*t')/(t'*s);
end

