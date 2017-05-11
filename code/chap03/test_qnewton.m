clear;
hold off;
x = -2.0:0.01:2.0;
y = -2.5:0.01:2.5;
[X Y] = meshgrid(x, y);
v = logspace(-10, 2, 100);
contour(X,Y,func(X,Y),v,'LineWidth',1);
hold on;
axis equal;
x0 = [-0.5;-1];
xs = [1;1];
plot (xs(1), xs(2), 'r*','LineWidth',4,'MarkerSize',10);
plot (x0(1), x0(2), 'ro','LineWidth',4,'MarkerSize',10);
pause;

df0 = dfunc(x0(1), x0(2));
p = -df0/norm(df0);
a = backtracking(x0, df0, p, 1, 0.9, 0.5);
x1 = x0 + a*p;
df1 = dfunc(x1(1), x1(2));
plot ([x0(1) x1(1)], [x0(2) x1(2)], 'r','LineWidth',4);
pause;

B = eye(2);
B = SR1(x0,x1,df0,df1,B)
tol = 1e-7;
while (norm(df1) > tol)
    p = -B \ df1;
    a = backtracking(x1, df1, p, 1, 0.9, 0.5);
    x2 = x1 + a * p;
    plot ([x1(1) x2(1)], [x1(2) x2(2)], 'r','LineWidth',4);
    x0 = x1;
    x1 = x2;
    df0 = dfunc(x0(1), x0(2));
    df1 = dfunc(x1(1), x1(2));
    norm(x1-xs)
    norm(df1)
    pause;
end

