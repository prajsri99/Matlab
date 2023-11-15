% CS 5810  -- Programming for data analysis 
%
%  Assignment 3 | Prof. Alberto Paccanaro
% 
%
%  
% Insert BELOW your code 

% INSERT YOUR CODE HERE!
function Z = projectData(xmu,U,k)
Z = [];
filename = "pcadata.mat";
file = matfile(filename);
x = file.X;
[xmu,~] = subtractMean(x);
[U, ~] = myPCA(xmu);
Z = xmu * U(:,1:k);
end