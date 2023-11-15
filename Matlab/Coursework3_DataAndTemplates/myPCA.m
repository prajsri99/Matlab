function [U, S] = myPCA(~)
file = "pcadata.mat";
filename = matfile(file);
x = filename.X;
[xmu,mu] = subtractMean(x);
cov_dataset = cov(xmu);
[v,D] = eig(cov_dataset);
[d,ind] = sort(diag(D),'descend');
U = v(:,ind);
S = D(ind,ind);
end

