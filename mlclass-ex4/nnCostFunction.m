function [J, grad] = nnCostFunction(nn_params, input_layer_size, hidden_layer_size, num_labels, X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification

% Reshape nn_params back into the parameters Theta1 and Theta2
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), hidden_layer_size, (input_layer_size + 1));
Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

% You need to return the following variables correctly
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% Convert to output vectors
outputs = zeros(m, num_labels);
for i=1:m
	outputs(i, y(i)) = 1;
end

% Forward propagation
a1 = [ones(m,1), X];
z2 = a1 * Theta1';
a2 = [ones(m, 1), sigmoid(z2)];
z3 = a2 * Theta2';
a3 = sigmoid(z3);

% Calculate costs per example and labe, take sum
costs = outputs .* log(a3) + (1 - outputs) .* log(1 - a3);
J = (-1 / m) * sum(sum(costs));

% Add regularized portion of cost function
theta1_nonbias = Theta1(:, 2:end);
theta2_nonbias = Theta2(:, 2:end);
J = J + (lambda / (2 * m)) * (sum(sum(theta1_nonbias .^ 2)) + sum(sum(theta2_nonbias .^ 2)));

% Calculate gradients using back propagation
% delta3 = a3 - outputs;
% delta2 = (delta3 * Theta2(:,2:end)) .* sigmoidGradient(z2);
% Theta2_grad = 

for i = 1:m
	delta3 = (a3(i,:) - outputs(i,:))';
	delta2 = (Theta2(:,2:end)' * delta3) .* sigmoidGradient(z2(i,:)');

	Theta2_grad = Theta2_grad + delta3 * a2(i,:);
	Theta1_grad = Theta1_grad + delta2 * a1(i,:);
end

Theta1_grad = (1 / m) * Theta1_grad;
for i = 1:size(Theta1_grad, 1)
	for j=2:size(Theta1_grad, 2)
		Theta1_grad(i, j) = Theta1_grad(i, j) + lambda / m * Theta1(i, j);
	end
end

Theta2_grad = (1 / m) * Theta2_grad;
for i=1:size(Theta2_grad, 1)
	for j=2:size(Theta2_grad, 2)
		Theta2_grad(i, j) = Theta2_grad(i, j) + lambda / m * Theta2(i, j);
	end
end

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];

end
