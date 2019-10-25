clc;
% 1、随机数、直方图
% w=randn(1,10000); %生成高斯随机数
% histogram(w); %直方图

% 2、矩阵
% A=[1,2;3,4;5,6];
% disp(A);
% disp(size(A));
% disp(size(A,1));
% disp(A(3,2));
% disp(A(3,:));
% disp(A([1,3],:)); %所有的第1行跟第3行
% A(:,2)=[7;8;9]; % 赋值
% A=[A,[10;11;12]]; % 追加一列
% disp(A(:)) %将所有A的元素放到一个列向量里
% B=[7,8;9,10;11,12];
% C=[A,B]; %增广矩阵
% D=[A;B];
% disp(C);
% disp(D);

% 3、文件路径
% cd 'd:/Matlab/MechineLearning';
% ls; %列出路径下所有文件
% load 'data.txt';
% who; % 列出所有的工作区变量名
% whos; % 列出所有工作区变量的详细信息（size,类型等等）
% clear ans; % 删除工作区变量
% v=data(1:3);
% save backup.mat v;
% save backup.txt v -ascii;
