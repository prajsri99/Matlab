load 'salesMetformin.dat'
sales = salesMetformin(2,:);
year = salesMetformin(1,:);
plot(year,sales,'-rx','linewidth',2,'MarkerSize',8)
xlabel("Period");
ylabel("Sales in Billion")