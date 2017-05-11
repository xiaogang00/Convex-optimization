function df = dfunc(x1, x2)
    df1 = 2 * x1 - 40 * x1 .* (-x1.^2 + x2) - 2;
    df2 = -20 * x1.^2 + 20 * x2;
    df = [df1;df2];
end