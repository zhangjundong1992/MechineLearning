function idx = findClosestCentroids(X, centroids)

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

for i = 1:size(X,1) % 遍历训练集中所有的点
     
    % 将最小距离初始化为距第一个中心店的距离
    ini_delta = centroids(1,:) - X(i,:);
    min_value = ini_delta * ini_delta';
    idx(i) = 1;

    for j = 2:K % 遍历所有的中心，计算当前点到中心的距离，求最小值
        curr_delta = centroids(j,:) - X(i,:);
        curr_distance = curr_delta * curr_delta';

        if(curr_distance < min_value)        
            min_value = curr_distance;
            idx(i) = j;
        end    
    end    
end

end

