function [ output_args ] = Walk( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
time = 0:0.01:2*pi/4;

% 左前腿膝关节和髋关节
zqx = 5*sin(2*pi/0.4*time+pi/2)+abs(5*sin(2*pi/0.4*time+pi/2))/2;
zqk = 5.5*sin(2*pi/0.4*time);

% 右前腿膝关节和髋关节
yqx = 5*sin(2*pi/0.4*time+3*pi/2)+abs(5*sin(2*pi/0.4*time+3*pi/2))/2;
yqk = 5.5*sin(2*pi/0.4*time+pi);

% 左后腿膝关节和髋关节
zhx = -5*sin(2*pi/0.4*time+3*pi/2)/2-abs(5*sin(2*pi/0.4*time+3*pi/2))/2;
zhk = 5.5*sin(2*pi/0.4*time+pi);
% 右后腿膝关节和髋关节
yhx = -5*sin(2*pi/0.4*time+pi/2)/2 - abs(5*sin(2*pi/0.4*time+pi/2))/2;
yhk = 5.5*sin(2*pi/0.4*time);

%左前腿膝关节和髋关节
subplot(2,2,1);
plot(time, zqx, 'r-.', time,zqk,'b-');
ylabel('θ/ °');
xlabel('Time(s)');
legend('zqx','zqk')
title('左前腿膝关节和髋关节')

%右前腿膝关节和髋关节
subplot(2,2,2);
plot(time, yqx, 'r-.', time,yqk,'b-');
xlabel('Time(s)');
ylabel('θ/ °');
legend('yqx','yqk')
title('右前腿膝关节和髋关节')

%左后腿膝关节和髋关节
subplot(2,2,3);
plot(time, zhx, 'r-.', time,zhk,'b-');
xlabel('Time(s)');
ylabel('θ/ °');
legend('zhx','zhk')
title('左后腿膝关节和髋关节')

%右后腿膝关节和髋关节
subplot(2,2,4);
plot(time, yhx, 'r-.', time,yhk,'b-');
xlabel('Time(s)');
ylabel('θ/ °');
legend('yhx','yhk')
title('右后腿膝关节和髋关节')
end

