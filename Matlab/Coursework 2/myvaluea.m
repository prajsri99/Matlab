function n = myvalueA(err)
actual = 1/exp(1);
diff = 1;
n = 0;
while diff >= err
    n = n + 1;
    approx = (1-1/n)^n;
    diff = actual - approx;
end
end
