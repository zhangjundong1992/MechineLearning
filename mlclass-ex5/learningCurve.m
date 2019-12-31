function [error_train, error_val] = learningCurve(X, y, Xval, yval, lambda)

    % Number of training examples
    m = size(X, 1);

    % You need to return these values correctly
    error_train = zeros(m, 1);
    error_val   = zeros(m, 1);

    % Sample Solution 
    m_val = size(Xval, 1);
    num_attempts = 50;

    % ��������ѵ������
    for i = 1:m
      error_train(i) = 0;
      error_val(i) = 0;
        
      % ��Բ�ͬ���������ݼ���i���������Զ�Σ�50�Σ���ÿ��ȡ��ͬ��i���������ݣ���ƽ��ֵ
      for attempt = 1:num_attempts
        indexes = randperm(m,i); % ��1��m���д��ң�ȡǰi��
        Xm = X(indexes, :);
        ym = y(indexes, :);

        theta = trainLinearReg(Xm, ym, lambda);

        train_errors = Xm * theta - ym;
        error_train(i) = error_train(i) + 1 / (2 * i) * (train_errors' * train_errors);

        val_errors = Xval * theta - yval;
        error_val(i) = error_val(i) + 1 / (2 * m_val) * (val_errors' * val_errors);
      end

      error_train(i) = error_train(i) / num_attempts;
      error_val(i) = error_val(i) / num_attempts;
    end
end
