function MSE = MSE()
h = figure;

X=imread('1.png');  % ͼƬ1

Y=imread('2.png');  % ͼƬ2
% ��ʾͼƬ
subplot(121);
imshow(X);
subplot(122);
imshow(Y);

% ���������
D = X-Y; % �������
size(X)  % 540 960 3
prod(size(X)) % prod = 540*960*3
MSE = sum(D(:).*D(:))/prod(size(X)); 
annotation(h,'textbox',[0.4 0.8 0.2 0.05],'String',['MSE=' num2str(MSE)]);