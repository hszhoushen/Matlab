function [ output_args ] = Walk( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
time = 0:0.01:2*pi/4;

% ��ǰ��ϥ�ؽں��Źؽ�
zqx = 5*sin(2*pi/0.4*time+pi/2)+abs(5*sin(2*pi/0.4*time+pi/2))/2;
zqk = 5.5*sin(2*pi/0.4*time);

% ��ǰ��ϥ�ؽں��Źؽ�
yqx = 5*sin(2*pi/0.4*time+3*pi/2)+abs(5*sin(2*pi/0.4*time+3*pi/2))/2;
yqk = 5.5*sin(2*pi/0.4*time+pi);

% �����ϥ�ؽں��Źؽ�
zhx = -5*sin(2*pi/0.4*time+3*pi/2)/2-abs(5*sin(2*pi/0.4*time+3*pi/2))/2;
zhk = 5.5*sin(2*pi/0.4*time+pi);
% �Һ���ϥ�ؽں��Źؽ�
yhx = -5*sin(2*pi/0.4*time+pi/2)/2 - abs(5*sin(2*pi/0.4*time+pi/2))/2;
yhk = 5.5*sin(2*pi/0.4*time);

%��ǰ��ϥ�ؽں��Źؽ�
subplot(2,2,1);
plot(time, zqx, 'r-.', time,zqk,'b-');
ylabel('��/ ��');
xlabel('Time(s)');
legend('zqx','zqk')
title('��ǰ��ϥ�ؽں��Źؽ�')

%��ǰ��ϥ�ؽں��Źؽ�
subplot(2,2,2);
plot(time, yqx, 'r-.', time,yqk,'b-');
xlabel('Time(s)');
ylabel('��/ ��');
legend('yqx','yqk')
title('��ǰ��ϥ�ؽں��Źؽ�')

%�����ϥ�ؽں��Źؽ�
subplot(2,2,3);
plot(time, zhx, 'r-.', time,zhk,'b-');
xlabel('Time(s)');
ylabel('��/ ��');
legend('zhx','zhk')
title('�����ϥ�ؽں��Źؽ�')

%�Һ���ϥ�ؽں��Źؽ�
subplot(2,2,4);
plot(time, yhx, 'r-.', time,yhk,'b-');
xlabel('Time(s)');
ylabel('��/ ��');
legend('yhx','yhk')
title('�Һ���ϥ�ؽں��Źؽ�')
end

