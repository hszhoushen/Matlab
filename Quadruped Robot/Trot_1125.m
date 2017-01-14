function [ output_args ] = Trot_Adams_1125( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
time = linspace(0,4,200);

%    zhx = -12.1*sin(2*pi*(time-0.25))-abs(12.1*sin(2*pi*(time-0.25)));
%    zhx = 0;
t = time;
% 左后腿膝关节和髋关节
zhx = 0.*(time<= 0.25) + (-12.1*sin(2*pi*(time-0.25))-abs(12.1*sin(2*pi*(time-0.25)))).*(time>0.25);  % Motion1
zhk = 7.1*sin(2*pi*time+pi);    % Motion2


% 左前腿膝关节和髋关节
zqx = -12.1*sin(4*pi*(time-0.25)+pi).*(time<0.25) + 0.*(time==0.25) + (-12.1*sin(2*pi*(time-0.25)+pi)-abs(12.1*sin(2*pi*(time-0.25)+pi))).*(time>0.25); % Motion5
zqk = 7.1*sin(2*pi*time);   % Motion6

% 右后腿膝关节和髋关节
yhx = -12.1*sin(4*pi*(time-0.25)+pi).*(time<0.25) + 0.*(time==0.25) + (-12.1*sin(2*pi*(time-0.25)+pi)-abs(12.1*sin(2*pi*(time-0.25)+pi))).*(time>0.25); % Motion3
yhk = 7.1*sin(2*pi*time);   % Motion4

% 右前腿膝关节和髋关节
yqx = 0.*(time<=0.25)+(-12.1*sin(2*pi*(time-0.25))-abs(12.1*sin(2*pi*(time-0.25)))).*(time>0.25);   % Motion7
yqk = 7.1*sin(2*pi*time+pi);    % Motion8



%左前腿膝关节和髋关节
subplot(2,2,1);
plot(time, zqx, 'r-', time,zqk,'b-');
ylabel('θ/ °');
xlabel('Time(s)');
legend('zqx','zqk')
title('左前腿膝关节和髋关节')

%右前腿膝关节和髋关节
subplot(2,2,2);
plot(time, yqx, 'r-', time,yqk,'b-');
xlabel('Time(s)');
ylabel('θ/ °');
legend('yqx','yqk')
title('右前腿膝关节和髋关节')

%左后腿膝关节和髋关节
subplot(2,2,3);
plot(time, zhx, 'r-', time,zhk,'b-');
xlabel('Time(s)');
ylabel('θ/ °');
legend('zhx','zhk')
title('左后腿膝关节和髋关节')

%右后腿膝关节和髋关节
subplot(2,2,4);
plot(time, yhx, 'r-', time,yhk,'b-');
xlabel('Time(s)');
ylabel('θ/ °');
legend('yhx','yhk')
title('右后腿膝关节和髋关节')
end

