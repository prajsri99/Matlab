% CS 5810  -- Programming for data analysis 
%
%  Assignment 3 | Prof. Alberto Paccanaro
% 
%
% 
% Insert BELOW your code 
 
% INSERT YOUR CODE HERE!
function [c , v] = mykmeans(data,k)
v = zeros(size(k,2));
filename = "DataForKmeans.mat";
data = matfile(filename);
[r, ~] = size(data.Data);
x = data.Data;
indx = randperm(r,k);
centroids = x(indx(1:k), :);
centroid_dist = pdist2(data.Data,centroids,'euclidean');
[~,indice] = min(centroid_dist,[],2);
for i=1:k
    centroids(i,:) = mean(x(indice == i, :));
end
centroids = x(indx(1:k),:);
old_centroids = zeros(size(k,2));
iters = 0;
for item = 1:length(centroids)
    for index = 1:length(old_centroids)
        if index ~= item
        old_centroids = centroids;
        dist = pdist2(x,centroids,'euclidean');
        [~,indexes] = min(dist,[],2);
        for j = 1:k
            c(j,:) = mean(x(indexes == j, :));   
        end
        iters = iters + 1;
        end
    end
end
sz = 100;
scatter(x(:,1),x(:,2),sz,'g*')
hold on 
scatter(c(:,1),c(:,2),sz,'rd')
