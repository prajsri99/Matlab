function n = plotfn(vec)
fn_mathematical = input("Enter Mathematical Function ",'s');
k_grid = length(vec)/2;
for i = 1:length(vec)
    x = linspace(0,10,vec(i));
    Y = eval(fn_mathematical);
    subplot(k_grid,2,i);
    n = plot(x,Y,'r.','MarkerSize',8,'LineWidth',1);
    title(['number of points =',num2str(vec(i))])
    grid on
end
end



