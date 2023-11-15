function [xmu, mu] = subtracMean(~)
filenames = "pcafaces.mat";
m = matfile(filenames);
ffs = m.X;
mu = mean(ffs);
xmu = minus(ffs,mu);
end