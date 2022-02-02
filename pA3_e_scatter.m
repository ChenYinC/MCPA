me = 9.11 * 10^(-31); %masss of e- (kg)
ts = 0.1; %sampling time (sec)
t_stop = 20; %stop time (sec)
ns = t_stop / ts;

F = 0.001; %force (N/m)
x = [0]; %initial position (m)
v = [0]; %initial velocity (m/s)
t = [0];
P = 5; %scattering posibility (%)

plot(t, v);
hold on;

for i=2:ns
    t(i) = ts*(i-1);
    pval = randi([1 100]);
    if pval <= 5
        x(i) = x(i-1);
        v(i) = 0;
    else
        x(i) = x(i-1) + ts*v(i-1);
        v(i) = v(i-1) + (F/me)*ts;
    end
    
    subplot(2, 1, 1);
    plot(t, v);
    hold on;
    subplot(2, 1, 2);
    plot(t, x);

    pause(ts);
end