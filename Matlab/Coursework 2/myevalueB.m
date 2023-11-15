% CS5810  -- Programming for data analysis 
% 
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!
function n = myevalueB(err)
actual_value = exp(1);
diff_value = 1;
n = 0;
approximate_value = 0;
while diff_value >= err
    approximate_value = approximate_value + 1/factorial(n);
    n = n + 1;
    diff_value = actual_value - approximate_value;
end
end

