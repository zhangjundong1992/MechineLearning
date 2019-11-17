% clc;
% %% 1、随机数、直方图
% w=randn(1,10000); %生成高斯随机数
% histogram(w); %直方图
% 
% %% 2、矩阵基础操作
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
% 
% %% 3、文件路径
% cd 'd:/Matlab/MechineLearning';
% ls; %列出路径下所有文件
% load 'data.txt';
% who; % 列出所有的工作区变量名
% whos; % 列出所有工作区变量的详细信息（size,类型等等）
% clear ans; % 删除工作区变量
% v=data(1:3);
% save backup.mat v;
% save backup.txt v -ascii;
% 
% %% 4、矩阵运算
% A=[10,2;3,4;5,6];
% B=[11,12;13,14;15,16];
% C=[1,1;2,2];
% v=[1;2;5];
% disp(A*C);
% disp(A.*B);
% disp(1./v);
% disp(1./A);
% disp(1.+v);
% disp(A');
% disp(max(v));
% [val,ind]=max(v); %返回值是两个的时候，分别为[最大值，索引]
% disp([val,ind]);
% disp(max(A)) %矩阵时返回每一列的最大值
% disp(max(A,[],2)); %按行求最大值
% disp(v>2); %比较大小
% disp(find(v<3));
% [r,c]=find(A>4); %r is row,c is colum
% disp([r,c]);
% D=magic(3);
% E=pinv(D); %伪逆矩阵
% disp(D*E);
% 
% %% 5、绘图
% t= 0:0.01:0.98;
% y1=sin(2*pi*4*t);
% y2=cos(2*pi*4*t);
% hold on
% plot(t,y1,'b');
% plot(t,y2,'r');
% xlabel('time');
% ylabel('value');
% legend('sin','cos');
% title('my plot');
% print -dpng 'myPlot.png';
% figure,plot(t,y1);
% figure,plot(t,y2); %绘制到两个图上
% subplot(1,2,1);plot(t,y1,'b');
% subplot(1,2,2);plot(t,y2,'r');
% A=magic(5);
% imagesc(A);
% imagesc(A),colorbar,colormap gray;
% 
% %% 6、控制语句
% v=zeros(10,1);
% for i=1:10
%     v(i)=2^i;
% end
% disp(v);
% i=1;
% while i<=5
%     v(i)=100;
%     i=i+1;
% end
% disp(v);
% 
% %% 7、定义函数
% disp(squareThisNumber([1,2,3]));
% [y1,y2]=squareAndCubeThisNumber(3);
% disp([y1,y2]);
% 
% % cost function
% X=[1,1;1,2;1,3]; %design matrix
% y=[1;2;3];
% theta=[0;1];
% J=costFunctionJ(X,y,theta);
% disp(J);

%% 8、矢量化



