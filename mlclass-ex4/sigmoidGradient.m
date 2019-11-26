function g = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function evaluated at z

sig = sigmoid(z);
g = sig .* (1 - sig);

end
