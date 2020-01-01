function [C, sigma] = dataset3Params(X, y, Xval, yval)

    C_vec = [0.01 0.03 0.1 0.3 1 3 10 30]';
    sigma_vec = [0.01 0.03 0.1 0.3 1 3 10 30]';
    error_val = zeros(length(C_vec),length(sigma_vec));
    for i = 1:length(C_vec)
        for j = 1:length(sigma_vec)
          model= svmTrain(X, y, C_vec(i), @(x1, x2) gaussianKernel(x1, x2, sigma_vec(j))); 
          predictions = svmPredict(model, Xval);
          error_val(i,j) = mean(double(predictions ~= yval));
        end
    end


    [I,J]=find(error_val ==  min(error_val(:)) );    % ��һ�ַ�ʽ����СԪ��λ��
    C = C_vec(I);         % 1
    sigma = sigma_vec(J);  % 0.100

end
