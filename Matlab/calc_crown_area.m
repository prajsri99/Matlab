function crownarea =  calc_crown_area(r1,r2)
len1 = length(r1);
len2 = length(r2);
crownarea = [];
if len1 ~= len2
    fprintf("The calculation cannot be performed\n")
elseif r1>r2
    fprintf("The calculation is not performed\n");
else
    idx = find(r1<r2);
    crownarea = pi * (r2(idx).^2 - r1(idx).^2);
    fprintf("The area is %.2f\n",crownarea)                                                       
end
end




