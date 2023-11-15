function p = plotrandsem(f,n)
f = fopen("pointsEx1.txt",'r');
ff = fscanf(f,'%s%f%s%f',[4,inf])';
random_points = [];
if n > size(ff,1)
    fprintf("Error! The number of data points is greater than the size of the textfile")
elseif n < size(ff,1)
    for i = 1:n
        index = randi(size(ff,1),1);
        random_points(i) = index;
    end
    x = ff(random_points,2);
    y = ff(random_points,4);
    p = stem(x,y);
end
end






