clc;
clear;
close all;

% PROJECT 03: TIME SHIFTING AND SCALING OF SIGNALS

% 1. Define signal parameters
A = 1;
f = 2;

Fs = 1000;
T = 1/Fs;

t = -5:T:5;

% 2. Generate the original signal
x = A*sin(2*pi*f*t);

% 3. Plot the original signal
figure;

plot(t, x, 'b', 'LineWidth', 1.5);

grid on;
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Original Sinusoidal Signal');

legend('x(t)');
xlim([-5 5]);

% 4. Save the result
if ~exist('Results', 'dir')
    mkdir('Results');
end

exportgraphics(gcf, 'Results/original_signal.png', ...
    'Resolution', 300);
