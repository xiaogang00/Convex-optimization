function d2f = d2func(x1, x2)
    d2f11 = 120 * x1.^2 - 40 * x2 + 2;
    d2f12 = -40 * x1;
    d2f21 = d2f12;
    d2f22 = 20;
    d2f = [d2f11 d2f12;d2f21 d2f22];
end