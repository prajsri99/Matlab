filenames = "pcafaces.mat";
m = matfile(filenames);
ffs = m.X;
[r c] = size(ffs);
figure(3)
displayData(ffs(1:100, :))
[xmean, meanu] = subtractMean("ffs");
[Uu, Ss] = myPCA(xmean);
disp(meanu)