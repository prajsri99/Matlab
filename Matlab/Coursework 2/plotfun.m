% CS5810  -- Programming for data analysis 
% 
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!
function n = plotfun(vec)
prompt = "Enter a mathematical function";
fn_mathematical = input(prompt,'s');
k_grid = length(vec);
for i = 1:length(vec)
    x = linspace(0,10,vec(i));
    Y = eval(fn_mathematical);
    subplot(k_grid/2,2,i);
    n = plot(x,Y,'r.','MarkerSize',8,'LineWidth',1);
    title(['Number of points =',num2str(vec(i))])
    grid on
end
end