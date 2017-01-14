dt = 0.2;
t = 0:dt:10;

Nsamples = length(t);

Avgsaved = zeros(Nsamples, 1);
Xmsaved = zeros(Nsamples, 1);

for k=1:Nsamples
    xm = GetVolt();
    avg = AvgFilter(xm);
    
    Avgsaved(k) = avg;
    Xmsaved(k) = xm;
end

figure

plot(t, Avgsaved, 'o-')
hold on
plot(t, Xmsaved, 'r:*')

legend('Average','Measured')
xlabel('Time(sec)')
ylabel('Volt[ V ]')
title('Average Algorithm')
