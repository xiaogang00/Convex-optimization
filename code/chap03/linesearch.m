tol = 1e-7;
a = 0.1;
while (norm(df0) > tol)
    p = -df0/norm(df0);
    a = accurate(x0, p, a);
    x1 = x0 + a*p;
    plot ([x0(1) x1(1)], [x0(2) x1(2)], 'r','LineWidth',4);
    x0 = x1;
    df0 = dfunc(x0(1), x0(2));
    pause;
end
