function [J, grad] = linearRegCostFunction(X, y, theta, lambda)

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

errors = X * theta - y;
sqr_cost = 1 / (2 * m) * (errors' * errors);
theta_sub = theta(2:end);
reg_cost = lambda / (2 * m) * (theta_sub' * theta_sub);

J = sqr_cost + reg_cost;

grad = 1 / m * X' * errors;
reg_grad = [0; lambda / m * theta(2:end)]; 
grad = grad + reg_grad;

% =========================================================================

end
