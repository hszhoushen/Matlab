function [ output_args ] = sigmod_tanh( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
t1 = linspace(-10,10,500);
t2 = linspace(-10,10,500);
t3 = linspace(-10,10,500);
%    zhx = -12.1*sin(2*pi*(time-0.25))-abs(12.1*sin(2*pi*(time-0.25)));
%    zhx = 0;

a = 1;
c = 0;
% sigmod & tanh
sigmod = sigmf(t1,[a c])
tan_h = tanh(t2);
max_f = max(0,t3);


%激活函数
subplot(2,2,1);
plot(t1, sigmod,'r-');
legend('sigmoid')
title('sigmoid函数')
axis([-10, 10, -1, 1])   % 坐标轴的显示范围 
set(gca, 'XGrid','on');  % X轴的网格
set(gca, 'YGrid','on');  % Y轴的网格


subplot(2,2,2);
plot(t2,tan_h,'b-');
legend('tanh')
title('tanh函数')
axis([-10, 10, -1, 1])   % 坐标轴的显示范围 
set(gca, 'XGrid','on');  % X轴的网格
set(gca, 'YGrid','on');  % Y轴的网格

subplot(2,2,3);
plot(t3,max_f,'c-');
legend('max(0,x)')
title('max(0,x)函数')
axis([-10, 10, -10, 10])   % 坐标轴的显示范围 
set(gca, 'XGrid','on');  % X轴的网格
set(gca, 'YGrid','on');  % Y轴的网格
end

