%{
    author: Zhou Liguang
    date: 26.Dec.2016
    function: Walk gait generator of a quadruped robot
%}

function [ output_args ] = Trot_1227( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
time = 0:0.01:2*pi/4;

% 左前腿膝关节和髋关节

zqx = -5*sin(2*pi/0.4*time+pi)/2-abs(5*sin(2*pi/0.4*time+pi)/2);
zqk = 8*sin(2*pi/0.4*time-pi/2);

% 右前腿膝关节和髋关节



RFH = 8*sin(10*pi*time)/3.*(0 < time<= 0.15) + 8*(10*pi*time-1.5*pi).*(0.15<time<0.25) + (-8)*cos(10*pi*time)/3-5*pi/6 .*(0.25 < time <0.4);
RFK = -5*sin(10*pi*time-1.5*pi).*(0.15 <= time <= 0.25);

% 左后腿膝关节和髋关节
zhx = 5*sin(2*pi/0.4*time)/2+abs(5*sin(2*pi/0.4*time)/2);
zhk = 8*sin(2*pi/0.4*time+pi/2);
% 右后腿膝关节和髋关节
yhx = 5*sin(2*pi/0.4*time+pi)/2+abs(5*sin(2*pi/0.4*time+pi)/2);
yhk = 8*sin(2*pi/0.4*time-pi/2);


    
%左前腿膝关节和髋关节
subplot(2,2,1);
plot(time, zqx, 'r-.', time,zqk,'b-');
ylabel('θ/ °');
xlabel('Time(s)');
legend('zqx','zqk')
title('左前腿膝关节和髋关节')

%右前腿膝关节和髋关节
subplot(2,2,2);
plot(time, RFK, 'r-.', time,RFH,'b-');
xlabel('Time(s)');
ylabel('θ/ °');
legend('RFK','RFH')
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

