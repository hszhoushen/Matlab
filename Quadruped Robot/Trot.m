function [ output_args ] = Trot( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
time = 0:0.05:2*pi;

% ��ǰ��ϥ�ؽ�
Angle1 = -5*sin(2*pi/0.4*time)/2 - abs(5*sin(2*pi/0.4*time))/2;
% �Һ���ϥ�ؽ�
Angle2 = 5*sin(2*pi/0.4*time)/2 + abs(5*sin(2*pi/0.4*time))/2;
% ��ǰ�Ⱥ��Һ����Źؽ�
Angle3 = 5.5*sin(2*pi/0.4*time+pi/2);
% ����Ⱥ���ǰ���Źؽ�
Angle4 = 5.5*sin(2*pi/0.4*time-pi/2);


%ϥ�ؽ�
figure(1)
plot(time, Angle1, 'r:*', time,Angle2,'bo-');
ylabel('��/ ��');
xlabel('Time(s)');
legend('zqx','yhx')
title('ϥ�ؽ�')

%�Źؽ�
figure(2)
plot(time, Angle3, 'k:*', time,Angle4,'mo-');
xlabel('Time(s)');
ylabel('��/ ��');
legend('zqyhk','zhyqk')
title('�Źؽ�')

end

