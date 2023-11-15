x = rand(20000,1).*(1-0)+0;
y = rand(20000,1).*(1-0)+0;
z = rand(20000,1).*(1-0)+0;
idx1 = (x > 0.9|y > 0.9|z > 0.9);
plot3(x(idx1),y(idx1),z(idx1),'b*')
hold on 
idx2 = (x > 0.4 | y> 0.4 | z>0.4);
idx3 = (x < 0.5 & y < 0.5 & z < 0.5);
idx = idx2 & idx3;
plot3(x(idx), y(idx) , z(idx), 'r*')
xlabel('x axis')
ylabel('y axis')
grid on