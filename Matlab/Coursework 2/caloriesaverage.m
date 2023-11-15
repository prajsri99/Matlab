% CS5810  -- Programming for data analysis 
%
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE! 
function avg = caloriesaverage(calorie)
persistent sum_cal c 
if isempty(sum_cal)
    sum_cal = 0;
    c = 0;
end 

if calorie == 0
avg = 0;
c = 0;
sum_cal = 0;

else
sum_cal = sum_cal + calorie;
c = c + 1;
avg = sum_cal / c;

if sum_cal > 2000
    fprintf("You have consumed %.2f calories for the day",sum_cal)
end
disp(avg)
end
end

