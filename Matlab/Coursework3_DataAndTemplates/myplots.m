% CS 5810  -- Programming for data analysis 
%
%  Assignment 3 | Prof. Alberto Paccanaro
%  
%
% 
% Insert BELOW your code 

% INSERT YOUR CODE HERE!
function n = myplots(fnc,clr,mark)
if length(fnc) > 4 || length(clr) > 4 || length(mark) > 4
    fprintf("Error! Please enter the input vectors of length FOUR \n")
else
    for i = 1:length(fnc)
        x = -2*pi:0.3:2*pi;
        y = eval(fnc{i});
        subplot(2,2,i);
        n = plot(x,y,'color',clr(i),'marker',mark(i));
        title(fnc(i))
    end
end
end

