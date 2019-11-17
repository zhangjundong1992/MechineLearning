function [ J ] = costFunctionJ( X,y,theta )
%COSTFUNCTIONJ 计算代价
%   X：设计矩阵
%   y:实际值
%   theta:预测矩阵
    m=size(X,1); %求行数，也就是训练集的个数
    predictions=X*theta; %预测值
    sqrError=(predictions-y).^2; %误差的平凡
    J=1/(2*m)*sum(sqrError); %代价
end

