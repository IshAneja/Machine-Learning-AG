function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should return this values correctly
centroids = zeros(K, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should set centroids to randomly chosen examples from
%               the dataset X
%
%Initialize centroids

%Cluster assignment step: Assign each data point to the closest centroid
%idx(i) corresponds to c^(i) the index of the centroid assigned to example i
%idx = findClosestCentroids(X, centroids)
% Move centroid step: Compute means based on centroid
% assignments
%centroids = computeMeans(X, idx, K);


randidx = randperm (size(X, 1));

centroids = X(randidx(1:K), :);









% =============================================================

end
