function [ output_args ] = Untitled( input_args )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% The analog value of the servo
AVS = 1024/300;
% Amplitude of gait
A1 = 8;
A2 = 16;
% Excel 
filename = 'gait_data.xlsx';
sheet = 2;
xlRange1 = 'C3';
xlRange2 = 'C4';
xlRange3 = 'C5';
xlRange4 = 'C6';
xlRange5 = 'C7';
xlRange6 = 'C8';
xlRange7 = 'C9';
xlRange8 = 'C10';

% Range of function
time = 0:0.01:pi/2;

% Gait vector
zqx9 = zeros(0,17);
zqk7 = zeros(0,17);
yqx8 = zeros(0,17);
yqk6 = zeros(0,17);
zhx15 = zeros(0,17);
zhk13 = zeros(0,17);
yhx14 = zeros(0,17);
yhk12 = zeros(0,17);

%

% 左前腿膝关节和髋关节
i = 1;
for time = 0: 0.4/16 : 0.4
    zqx9(i) = (-A1*sin(2*pi/0.4*time+pi)/2*-abs(A1*sin(2*pi/0.4*time+pi)/2))*AVS;
    zqx9(i) = round(zqx9(i));
    i = i+1;
end

i = 1;
for time = 0: 0.4/16 : 0.4
    zqk7(i) = A2*sin(2*pi/0.4*time-pi/2)*AVS;
     zqk7(i) = round(zqk7(i));
    i = i+1;
end

% 右前腿膝关节和髋关节
i = 1;
for time = 0: 0.4/16 : 0.4
    yqx8(i) = (-A1*sin(2*pi/0.4*time)/2-abs(A1*sin(2*pi/0.4*time)/2))*AVS;
      yqx8(i) =round(yqx8(i));
     i = i+1;
end

i = 1;
for time = 0: 0.4/16 : 0.4
    yqk6(i) = A2*sin(2*pi/0.4*time+pi/2)*AVS;
     yqk6(i) =round(yqk6(i));
     i = i+1;
end

% 左后腿膝关节和髋关节
i = 1;
for time = 0: 0.4/16 : 0.4
    zhx15(i) = (A1*sin(2*pi/0.4*time)/2+abs(A1*sin(2*pi/0.4*time)/2))*AVS;
      zhx15(i) = round(zhx15(i));
     i = i+1;
end

i=1;
for time = 0: 0.4/16 : 0.4
    zhk13(i) = A2*sin(2*pi/0.4*time+pi/2)*AVS;
    zhk13(i) =round(zhk13(i));
     i = i+1;
end

% 右后腿膝关节和髋关节
i = 1;
for time = 0: 0.4/16 : 0.4
    yhx14(i) = (A1*sin(2*pi/0.4*time+pi)/2+abs(A1*sin(2*pi/0.4*time+pi)/2))*AVS;
     yhx14(i) =round(yhx14(i));
     i = i+1;
end

i = 1;
for time = 0: 0.4/16 : 0.4
    yhk12(i) = A2*sin(2*pi/0.4*time-pi/2)*AVS;
    yhk12(i) = round(yhk12(i));
     i = i+1;
end

% print the gait data
yqk6
zqk7 
yqx8 
zqx9 
yhk12 
zhk13
yhx14 
zhx15 
% write the gait data to the excel files
xlswrite(filename, yqk6, sheet, xlRange1);
xlswrite(filename, zqk7, sheet, xlRange2);
xlswrite(filename, yqx8, sheet, xlRange3);
xlswrite(filename, zqx9, sheet, xlRange4);
xlswrite(filename, yhk12, sheet, xlRange5);
xlswrite(filename, zhk13, sheet, xlRange6);
xlswrite(filename, yhx14, sheet, xlRange7);
xlswrite(filename, zhx15, sheet, xlRange8);
