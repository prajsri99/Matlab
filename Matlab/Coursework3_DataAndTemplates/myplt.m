function n = myplt(fnc,clr,mark)
%fnc = {'sin(x)','cos(x)','tan(x)','sinh(x)','cosh(x)','tanh(x)'};
%clr = ['k', 'm', 'c', 'r', 'g', 'b'];
%mark = ['+', 'o', '*', 'x', 's', 'p'];
for i = 1:length(fnc)
    x = -2*pi:0.3:2*pi;
    y = eval(fnc{i});
    subplot(2,2,i);
    n = plot(x,y,'color',clr(i),'marker',mark(i));
    title(fnc(i))
end
end
