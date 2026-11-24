clc;
clear;
close all;

% PROJECT 04: SAMPLING AND ALIASING

% 1. Define signal parameters
A = 1;
fm = 10;

Fs = 1000;
T = 1/Fs;

t = 0:T:1;

% 2. Generate original signal
x = A*sin(2*pi*fm*t);

% 3. Plot original signal
figure;

plot(t, x, 'b', 'LineWidth', 1.5);

grid on;
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Original Continuous-Time Signal');

legend('x(t)');
xlim([0 1]);

% 4. Save result
if ~exist('Results', 'dir')
    mkdir('Results');
end

exportgraphics(gcf, 'Results/original_signal.png', ...
    'Resolution', 300);
