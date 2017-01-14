function [ output_args ] = Trot_Adams_1125( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
time = linspace(0,4,200);

%    zhx = -12.1*sin(2*pi*(time-0.25))-abs(12.1*sin(2*pi*(time-0.25)));
%    zhx = 0;
t = time;
% �����ϥ�ؽں��Źؽ�
zhx = 0.*(time<= 0.25) + (-12.1*sin(2*pi*(time-0.25))-abs(12.1*sin(2*pi*(time-0.25)))).*(time>0.25);  % Motion1
zhk = 7.1*sin(2*pi*time+pi);    % Motion2


% ��ǰ��ϥ�ؽں��Źؽ�
zqx = -12.1*sin(4*pi*(time-0.25)+pi).*(time<0.25) + 0.*(time==0.25) + (-12.1*sin(2*pi*(time-0.25)+pi)-abs(12.1*sin(2*pi*(time-0.25)+pi))).*(time>0.25); % Motion5
zqk = 7.1*sin(2*pi*time);   % Motion6

% �Һ���ϥ�ؽں��Źؽ�
yhx = -12.1*sin(4*pi*(time-0.25)+pi).*(time<0.25) + 0.*(time==0.25) + (-12.1*sin(2*pi*(time-0.25)+pi)-abs(12.1*sin(2*pi*(time-0.25)+pi))).*(time>0.25); % Motion3
yhk = 7.1*sin(2*pi*time);   % Motion4

% ��ǰ��ϥ�ؽں��Źؽ�
yqx = 0.*(time<=0.25)+(-12.1*sin(2*pi*(time-0.25))-abs(12.1*sin(2*pi*(time-0.25)))).*(time>0.25);   % Motion7
yqk = 7.1*sin(2*pi*time+pi);    % Motion8



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

