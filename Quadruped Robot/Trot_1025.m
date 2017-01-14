function [ output_args ] = Trot_1025( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
time = linspace(0,0.8,200);

%    zhx = -12.1*sin(2*pi*(time-0.25))-abs(12.1*sin(2*pi*(time-0.25)));
%    zhx = 0;
t = time;

% ��ǰ��ϥ�ؽں��Źؽ�
zqk = 8*sin(2*pi/0.4*time);  % Motion6
zqx = -5*sin(2*pi/0.4*time)/2-abs(5*sin(2*pi/0.4*time))/2; % Motion5

% �����ϥ�ؽں��Źؽ�
zhk = 8*sin(2*pi/0.4*time+pi);   % Motion2 
zhx = -5*sin(2*pi/0.4*time+pi)/2-abs(5*sin(2*pi/0.4*time+pi))/2; % Motion1


% ��ǰ��ϥ�ؽں��Źؽ�
yqk = 8*sin(2*pi/0.4*time+pi);    % Motion8
yqx = -5*sin(2*pi/0.4*time+pi)/2-abs(5*sin(2*pi/0.4*time+pi))/2;  % Motion7

% �Һ���ϥ�ؽں��Źؽ�
yhk = 8*sin(2*pi/0.4*time);    % Motion4
yhx = -5*sin(2*pi/0.4*time)/2-abs(5*sin(2*pi/0.4*time))/2; % Motion3



%��ǰ��ϥ�ؽں��Źؽ�
subplot(2,2,1);
plot(time, zqx, 'r-', time,zqk,'b-');
ylabel('��/ ��');
xlabel('Time(s)');
legend('zqx','zqk')
title('��ǰ��ϥ�ؽں��Źؽ�')

%��ǰ��ϥ�ؽں��Źؽ�
subplot(2,2,2);
plot(time, yqx, 'r-', time,yqk,'b-');
xlabel('Time(s)');
ylabel('��/ ��');
legend('yqx','yqk')
title('��ǰ��ϥ�ؽں��Źؽ�')

%�����ϥ�ؽں��Źؽ�
subplot(2,2,3);
plot(time, zhx, 'r-', time,zhk,'b-');
xlabel('Time(s)');
ylabel('��/ ��');
legend('zhx','zhk')
title('�����ϥ�ؽں��Źؽ�')

%�Һ���ϥ�ؽں��Źؽ�
subplot(2,2,4);
plot(time, yhx, 'r-', time,yhk,'b-');
xlabel('Time(s)');
ylabel('��/ ��');
legend('yhx','yhk')
title('�Һ���ϥ�ؽں��Źؽ�')
end

