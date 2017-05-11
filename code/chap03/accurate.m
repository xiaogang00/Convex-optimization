function z = accurate(x0, p, a)
% z = backtracking(x0, p, a)

phi0 = func(x0(1), x0(2));
a = 0.1 * a;
alpha = a;
x1 = x0 + alpha * p;
phi1 = func(x1(1), x1(2));
while (phi1 < phi0)
    alpha = alpha + a;
    x1 = x0 + alpha * p;
    phi0 = phi1;
    phi1 = func(x1(1), x1(2));
end
z = alpha - a;