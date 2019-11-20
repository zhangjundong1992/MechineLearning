function p = predict(Theta1, Theta2, X)

m = size(X, 1);
X = [ones(m, 1) X];

output1 = sigmoid(X * Theta1');
output1 = [ones(m, 1), output1];
output2 = sigmoid(output1 * Theta2');

[~, p] = max(output2, [], 2);

end
