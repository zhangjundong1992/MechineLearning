function centroids = computeCentroids(X, idx, K)

% Useful variables
[~,n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);

% ====================== YOUR CODE HERE ======================

for k = 1:K
  examples = X(idx == k, :);
  sums = sum(examples, 1);
  centroids(k,:) = (1/size(examples, 1)) * sums;
end

% =============================================================
end

