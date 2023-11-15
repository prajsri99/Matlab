% CS5810  -- Programming for data analysis 
% 
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!
function n = myevalueA(err)
actual = 1/exp(1);
difference = 1;
n = 0;
while difference >= err
    n = n + 1;
    approximate = (1-1/n)^n;
    difference = actual - approximate;
end
end

