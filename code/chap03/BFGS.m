function B1 = BFGS(x0,x1,df0,df1,B0)
   
    s=x1-x0;
    y=df1-df0;
    t=B0*s;
    B1=B0 -(t*t')/(s'*t)+(y*y')/(y'*s);
end

