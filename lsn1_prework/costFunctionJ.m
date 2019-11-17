function [ J ] = costFunctionJ( X,y,theta )
%COSTFUNCTIONJ �������
%   X����ƾ���
%   y:ʵ��ֵ
%   theta:Ԥ�����
    m=size(X,1); %��������Ҳ����ѵ�����ĸ���
    predictions=X*theta; %Ԥ��ֵ
    sqrError=(predictions-y).^2; %����ƽ��
    J=1/(2*m)*sum(sqrError); %����
end

