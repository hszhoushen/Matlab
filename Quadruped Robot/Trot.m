function [ output_args ] = Trot( input_args )
%JOINT Summary of this function goes here
%   Detailed explanation goes here
time = 0:0.05:2*pi;

% 左前腿膝关节
Angle1 = -5*sin(2*pi/0.4*time)/2 - abs(5*sin(2*pi/0.4*time))/2;
% 右后腿膝关节
Angle2 = 5*sin(2*pi/0.4*time)/2 + abs(5*sin(2*pi/0.4*time))/2;
% 左前腿和右后腿髋关节
Angle3 = 5.5*sin(2*pi/0.4*time+pi/2);
% 左后腿和右前腿髋关节
Angle4 = 5.5*sin(2*pi/0.4*time-pi/2);


%膝关节
figure(1)
plot(time, Angle1, 'r:*', time,Angle2,'bo-');
ylabel('θ/ °');
xlabel('Time(s)');
legend('zqx','yhx')
title('膝关节')

%髋关节
figure(2)
plot(time, Angle3, 'k:*', time,Angle4,'mo-');
xlabel('Time(s)');
ylabel('θ/ °');
legend('zqyhk','zhyqk')
title('髋关节')

end

