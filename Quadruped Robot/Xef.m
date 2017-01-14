function [ output_args ] = Xef( input_args )

d = 0.1;
t = 0:d:2*pi;
T = 1.5;
Xf = 7.5;

Xef = Xf*(1/T + 1/2*pi * sin(2*pi*t/T))


plot(t, Xef, 'r:*');
xlabel('Time(s)');
ylabel('the length of end effort');

end

