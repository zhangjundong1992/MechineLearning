clc;
% 1���������ֱ��ͼ
% w=randn(1,10000); %���ɸ�˹�����
% histogram(w); %ֱ��ͼ

% 2������
% A=[1,2;3,4;5,6];
% disp(A);
% disp(size(A));
% disp(size(A,1));
% disp(A(3,2));
% disp(A(3,:));
% disp(A([1,3],:)); %���еĵ�1�и���3��
% A(:,2)=[7;8;9]; % ��ֵ
% A=[A,[10;11;12]]; % ׷��һ��
% disp(A(:)) %������A��Ԫ�طŵ�һ����������
% B=[7,8;9,10;11,12];
% C=[A,B]; %�������
% D=[A;B];
% disp(C);
% disp(D);

% 3���ļ�·��
% cd 'd:/Matlab/MechineLearning';
% ls; %�г�·���������ļ�
% load 'data.txt';
% who; % �г����еĹ�����������
% whos; % �г����й�������������ϸ��Ϣ��size,���͵ȵȣ�
% clear ans; % ɾ������������
% v=data(1:3);
% save backup.mat v;
% save backup.txt v -ascii;
