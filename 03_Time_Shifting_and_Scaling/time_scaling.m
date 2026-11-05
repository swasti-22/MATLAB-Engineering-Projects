clc;
clear;
close all;

% TIME SCALING OF SIGNALS

% 1. Define parameters
A = 1;
f = 2;

Fs = 1000;
T = 1/Fs;

t = -5:T:5;

% 2. Generate original signal
x = A*sin(2*pi*f*t);

% 3. Perform time scaling
x_compressed = A*sin(2*pi*f*(2*t));
x_expanded = A*sin(2*pi*f*(0.5*t));

% 4. Plot the signals
figure;

subplot(3,1,1);
plot(t, x, 'b', 'LineWidth', 1.5);
grid on;
title('Original Signal x(t)');
xlabel('Time (seconds)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, x_compressed, 'r', 'LineWidth', 1.5);
grid on;
title('Time Compressed Signal x(2t)');
xlabel('Time (seconds)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, x_expanded, 'g', 'LineWidth', 1.5);
grid on;
title('Time Expanded Signal x(0.5t)');
xlabel('Time (seconds)');
ylabel('Amplitude');

% 5. Save the result
if ~exist('Results', 'dir')
    mkdir('Results');
end

exportgraphics(gcf, 'Results/time_scaling.png', ...
    'Resolution', 300);
