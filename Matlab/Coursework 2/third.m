filename = 'cardata.mat';
m = matfile(filename);
model = string(cellstr(m.Model));
cylinder = string(num2str(m.Cylinders));
cyl = unique(cylinder);
origin = string(cellstr(m.Origin));

choice1 = menu('Choose the number of cylinders',cyl);

switch choice1
    case 1
        choice2 = menu('Choose the Model',model);    
    case 2
        choice2 = menu('Choose the Model',model);
    case 3
        choice2 = menu('Choose the Model',model);
    case 4
        choice2 = menu('Choose the Model',model);
    case 5
        choice2 = menu('Choose the Model',model);
end
