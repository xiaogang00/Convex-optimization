clear;
hold off;
x = -2.0:0.01:2.0;
y = -2.5:0.01:2.5;
[X Y] = meshgrid(x, y);
v = logspace(-10, 2, 100);
contour(X,Y,func(X,Y),v,'LineWidth',1);
hold on;
axis equal;
x0 = [-1.5;0.5];
xs = [1;1];
plot (xs(1), xs(2), 'r*','LineWidth',4,'MarkerSize',10);
plot (x0(1), x0(2), 'ro','LineWidth',4,'MarkerSize',10);
pause;
df0 = dfunc(x0(1),x0(2));
x1 = x0 - 0.02*df0;
plot([x0(1) x1(1)],[x0(2) x1(2)],'r--','LineWidth',2);
pause;
x1 = x0 - 0.05*df0;
px = -3.5:0.01:1.5;
py = -3.0:0.01:4.0;
f0 = func(x0(1), x0(2));
d2f0 = d2func(x0(1),x0(2));
[PX PY] = meshgrid(px,py);
contour(PX+x0(1),PY+x0(2),mk(PX,PY,f0,df0,d2f0),v,'LineWidth',2);
C = (PX-x0(1)).^2 + (PY - x0(2)).^2;
cv = [0.1 0.5 1.0];
contour(PX,PY,C,cv,'r--','LineWidth',2);
pause;
p1 = x0 - 0.317*df0/norm(df0);
plot([x0(1) p1(1)],[x0(2) p1(2)],'r','LineWidth',4);
pause;
p2 = x0 - 0.42*df0/norm(df0);
plot([x0(1) p2(1)],[x0(2) p2(2)],'r','LineWidth',4);

