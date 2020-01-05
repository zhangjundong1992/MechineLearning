function [mu,sigma2] = estimateGaussian(X)

    mu = mean(X);
    sigma2 = std(X,1,1).^ 2;

end
