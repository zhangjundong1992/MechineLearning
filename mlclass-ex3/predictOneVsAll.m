function p = predictOneVsAll(all_theta, X)

m = size(X, 1);
X = [ones(m, 1), X];

predictions = sigmoid(X * all_theta');
% get the index of max value of each row
% concretly, the index is the prediction
[~, p] = max(predictions, [], 2); 

end
