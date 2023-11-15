x = rand(1,1000);
x1 = x.*(40-30)+30;
y = rand(1,1000);
y1 = y.*(20-10)+10;
p1 = plot(x1,y1,'bo');
xlabel('x-axis')
ylabel('y-axis')
hold on
axis([0 50 0 50])
xm = 20;
ym = 35;
xvariance = 1;
yvariance = 1;
x2 = randn(1,1000).*xvariance+xm;
y2 = randn(1,1000).*yvariance+ym;
p2 = plot(x2,y2,'r*');
axis([0 50 0 50])
legend([p1 p2],{'Uniform Distribution','Normal Distribution'})
grid on