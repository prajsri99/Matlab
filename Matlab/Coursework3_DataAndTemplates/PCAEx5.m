% CS 5810  -- Programming for data analysis 
%
%  Assignment 3 | Prof. Alberto Paccanaro
%  
%
% 
% Insert BELOW your code 

% INSERT YOUR CODE HERE!
file = "pcadata.mat";
data = matfile(file);
x = data.X;
[r c] = size(x);
figure(1)
plot(x(:,1),x(:,2),'bo');
hold on 
axis([0 7 2 8]);
[xmu, mu] = subtractMean(x);
[U, S] = myPCA(xmu);
u1 = U + mu;
u2 = 0 + mu;
u3_x = [u1(1,1);u2(1,1)];
u3_y = [u1(2,1);u2(1,2)];
u4_x = [u1(1,2);u2(1,1)];
u4_y = [u1(2,2);u2(1,2)];
plot(u3_x(:,1),u3_y(:,1),'r')
hold on 
plot(u4_x(:,1),u4_y(:,1),'g')
hold off
Z = projectData(xmu,U,1);
disp(Z(1:3,:))
X_rec = recoverData(Z, U, 1, mu);
figure(2)
plot(x(:,1),x(:,2),'bo');
hold on 
axis([0 7 2 8]);
plot(X_rec(:,1),X_rec(:,2),'r*')
hold off
filenames = "pcafaces.mat";
Data = matfile(filenames);
ffs = Data.X;
disp(ffs)
[r c] = size(ffs);
figure(3)
displayData(ffs(1:100, :))
meanu = mean(ffs);
xmean = minus(ffs,meanu);
cov_data = cov(xmean);
[V,Dd] = eig(cov_data);
[dd,ind] = sort(diag(Dd),'descend');
Uu = V(:,ind);
Ss = Dd(ind,ind);
ZZ = xmean .* meanu(:,1:1);
disp(ZZ(1:200,:))
X_recc = ZZ .* meanu(:,1:K)' + repmat(meanu, size(ZZ, 1), 1);
