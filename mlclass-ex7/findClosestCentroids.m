function idx = findClosestCentroids(X, centroids)

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

for i = 1:size(X,1) % ����ѵ���������еĵ�
     
    % ����С�����ʼ��Ϊ���һ�����ĵ�ľ���
    ini_delta = centroids(1,:) - X(i,:);
    min_value = ini_delta * ini_delta';
    idx(i) = 1;

    for j = 2:K % �������е����ģ����㵱ǰ�㵽���ĵľ��룬����Сֵ
        curr_delta = centroids(j,:) - X(i,:);
        curr_distance = curr_delta * curr_delta';

        if(curr_distance < min_value)        
            min_value = curr_distance;
            idx(i) = j;
        end    
    end    
end

end

