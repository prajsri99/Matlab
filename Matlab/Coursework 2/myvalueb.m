function n = myvalueb(err)
actual = exp(1);
diff = 1;
n = 0;
approximate = 0;
while diff >= err
    approximate = approximate + 1/factorial(n);
    n = n + 1;
    diff = actual - approximate;
 
end
end
