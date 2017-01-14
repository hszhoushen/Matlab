%{
    author: Zhou Liguang
    date: 26.Dec.2016
    function: Walk gait generator of a quadruped robot
%}

function [ output_args ] = Trot_1227( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
time = 0:0.01:2*pi/4;

% ��ǰ��ϥ�ؽں��Źؽ�

zqx = -5*sin(2*pi/0.4*time+pi)/2-abs(5*sin(2*pi/0.4*time+pi)/2);
zqk = 8*sin(2*pi/0.4*time-pi/2);

% ��ǰ��ϥ�ؽں��Źؽ�



RFH = 8*sin(10*pi*time)/3.*(0 < time<= 0.15) + 8*(10*pi*time-1.5*pi).*(0.15<time<0.25) + (-8)*cos(10*pi*time)/3-5*pi/6 .*(0.25 < time <0.4);
RFK = -5*sin(10*pi*time-1.5*pi).*(0.15 <= time <= 0.25);

% �����ϥ�ؽں��Źؽ�
zhx = 5*sin(2*pi/0.4*time)/2+abs(5*sin(2*pi/0.4*time)/2);
zhk = 8*sin(2*pi/0.4*time+pi/2);
% �Һ���ϥ�ؽں��Źؽ�
yhx = 5*sin(2*pi/0.4*time+pi)/2+abs(5*sin(2*pi/0.4*time+pi)/2);
yhk = 8*sin(2*pi/0.4*time-pi/2);


    
%��ǰ��ϥ�ؽں��Źؽ�
subplot(2,2,1);
plot(time, zqx, 'r-.', time,zqk,'b-');
ylabel('��/ ��');
xlabel('Time(s)');
legend('zqx','zqk')
title('��ǰ��ϥ�ؽں��Źؽ�')

%��ǰ��ϥ�ؽں��Źؽ�
subplot(2,2,2);
plot(time, RFK, 'r-.', time,RFH,'b-');
xlabel('Time(s)');
ylabel('��/ ��');
legend('RFK','RFH')
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

