clc;
clear;
close all;

% TIME SHIFTING OF SIGNALS

% 1. Define parameters
A = 1;
f = 2;

Fs = 1000;
T = 1/Fs;

t = -5:T:5;

% 2. Generate original signal
x = A*sin(2*pi*f*t);

% 3. Perform time shifting
x_delay = A*sin(2*pi*f*(t-2));
x_advance = A*sin(2*pi*f*(t+2));

% 4. Plot the signals
figure;

subplot(3,1,1);
plot(t, x, 'b', 'LineWidth', 1.5);
grid on;
title('Original Signal x(t)');
xlabel('Time (seconds)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, x_delay, 'r', 'LineWidth', 1.5);
grid on;
title('Delayed Signal x(t-2)');
xlabel('Time (seconds)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, x_advance, 'g', 'LineWidth', 1.5);
grid on;
title('Advanced Signal x(t+2)');
xlabel('Time (seconds)');
ylabel('Amplitude');

% 5. Save the result
if ~exist('Results', 'dir')
    mkdir('Results');
end

exportgraphics(gcf, 'Results/time_shifting.png', ...
    'Resolution', 300);
