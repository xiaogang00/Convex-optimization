clear;
hold off;
x = -2.0:0.01:2.0;
y = -2.5:0.01:2.5;
[X Y] = meshgrid(x, y);
v = logspace(-10, 2, 100);
contour(X,Y,func(X,Y),v,'LineWidth',1);
hold on;
axis equal;
x0 = [-1.5;1.5];
xs = [1;1];
plot (xs(1), xs(2), 'r*','LineWidth',4,'MarkerSize',10);
plot (x0(1), x0(2), 'ro','LineWidth',4,'MarkerSize',10);
pause;
df0 = dfunc(x0(1), x0(2));
d2f0 = d2func(x0(1), x0(2));
tol = 1e-7;
while (norm(df0) > tol)
    p = -d2f0\df0;
    x1 = x0 + p;
    plot ([x0(1) x1(1)], [x0(2) x1(2)], 'r','LineWidth',4);
    x0 = x1;
    df0 = dfunc(x0(1), x0(2));
    d2f0 = d2func(x0(1), x0(2));
    norm(x0-xs)
    norm(df0)
    pause;
end

