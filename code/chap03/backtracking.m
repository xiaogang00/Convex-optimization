function z = backtracking(x0, df0, p, a0, r, c)
% z = backtracking(x0, df0, p, a0, r, c)

alpha = a0;
x1 = x0 + alpha * p;
while (func(x1(1),x1(2)) > func(x0(1),x0(2)) +  c  * alpha * (df0' * p))
    alpha = alpha * r;
    x1 = x0 + alpha * p;
end
z = alpha;