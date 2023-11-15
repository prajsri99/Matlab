file = "pcadata.mat";
data = matfile(file);
x = data.X;
[r c] = size(x);
figure(1)
plot(x(:,1),x(:,2),'bo');
hold on 
axis([0 7 2 8]);
[xmu, mu] = subtmean(x);
[U, S] = mypc(xmu);
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
Z = projdata(xmu,U,1);
disp(Z(1:3,:))
X_rec = recoverData(Z, U, 1, mu);
figure(2)
plot(x(:,1),x(:,2),'bo');
hold on 
axis([0 7 2 8]);
plot(X_rec(:,1),X_rec(:,2),'r*')
hold off



