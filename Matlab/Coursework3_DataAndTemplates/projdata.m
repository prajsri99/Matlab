function Z = projdata(xmu,U,k)
Z = [];
filename = "pcadata.mat";
file = matfile(filename);
x = file.X;
[xmu,~] = subtmean(x);
[U, ~] = mypc(xmu);
Z = xmu .* U(:,1:k)';
end


