function m=mk(x1,x2,f,df,d2f)
    m=f+x1*df(1)+x2*df(2)+0.5*(d2f(1,1)*x1.^2+d2f(2,2)*x2.^2+2*x1.*x2.*d2f(1,2));
end