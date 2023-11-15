function [xmu, mu] = subtractMean(ff)
file = "pcadata.mat";
f = matfile(file);
ff = f.X;
mu = mean(ff,1);
xmu = minus(ff,mu);
end


