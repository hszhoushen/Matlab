function [ output_args ] = Joint_K( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
time = 0:0.05:2*pi;

% ��ǰ�Ⱥ��Һ����Źؽ�
Angle3 = 5.5*sin(2*pi/0.4*time+pi/2);
% ����Ⱥ���ǰ���Źؽ�
Angle4 = 5.5*sin(2*pi/0.4*time-pi/2);

plot(time, Angle3, 'r:*', time,Angle4,'o-');
ylabel('��/ ��');
xlabel('Time(s)');
legend('zqx','yhx')
title('The angle of zqx and yhx')

end

