function [J, grad] = lrCostFunction(theta, X, y, lambda)

% number of training examples
m = length(y); 

% hypothesis
h_theta_x = sigmoid(X * theta);

% value of each row is the cost of each example
costs = - y .* log(h_theta_x) - (1 - y) .* log(1 - h_theta_x);

% J_theta with regularization (note the theta_0)
J = 1 / m * sum(costs) + lambda / (2 * m) * sum(theta(2:end) .^2) ;
% other way to compute J_theta
% J = 1 / m * sum(costs) + lambda / (2 * m) * (theta(2:end)') * theta(2:end); 


% gradients with regularization (note the theta_0)
grad = 1 / m * X' * (h_theta_x - y) + lambda / m * [0; theta(2:end)];

end
