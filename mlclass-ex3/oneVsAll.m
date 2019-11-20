function [all_theta] = oneVsAll(X, y, num_labels, lambda)

[m, n]=size(X);
X = [ones(m, 1), X];
all_theta = zeros(num_labels, n + 1);

% num_labels times classification
for label=1:num_labels
    y_binary = y == label;
    initial_theta = zeros(n + 1, 1);
    options = optimset('GradObj', 'on', 'MaxIter', 50);
    [theta] = fmincg(@(t)(lrCostFunction(t, X, y_binary, lambda)), initial_theta, options);
    all_theta(label,:) = theta;
end

end
