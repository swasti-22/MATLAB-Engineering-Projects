clc;
clear;
close all;

% TIME REVERSAL OF SIGNALS

% 1. Define parameters
A = 1;
f = 2;

Fs = 1000;
T = 1/Fs;

t = -5:T:5;

% 2. Generate original signal
x = A*sin(2*pi*f*t);

% 3. Perform time reversal
x_reversed = A*sin(2*pi*f*(-t));

% 4. Plot the signals
figure;

subplot(2,1,1);
plot(t, x, 'b', 'LineWidth', 1.5);
grid on;
title('Original Signal x(t)');
xlabel('Time (seconds)');
ylabel('Amplitude');

subplot(2,1,2);
plot(t, x_reversed, 'r', 'LineWidth', 1.5);
grid on;
title('Time Reversed Signal x(-t)');
xlabel('Time (seconds)');
ylabel('Amplitude');

% 5. Save the result
if ~exist('Results', 'dir')
    mkdir('Results');
end

exportgraphics(gcf, 'Results/time_reversal.png', ...
    'Resolution', 300);
