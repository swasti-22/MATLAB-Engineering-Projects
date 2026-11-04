
clc;
clear;
close all;

% SIGNAL SUBTRACTION

% 1. Define signal parameters
A1 = 3;
A2 = 5;

f1 = 2;
f2 = 2;

Fs = 1000;
T = 1/Fs;

t = 0:T:2;

% 2. Generate two sinusoidal signals
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t);

% 3. Subtract the two signals
y = x1 - x2;

% 4. Plot the resultant signal
figure;

plot(t, y, 'r', 'LineWidth', 1.5);

grid on;
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Subtraction of Two Sinusoidal Signals');

legend('Subtracted Signal');
xlim([0 2]);

% 5. Save the result
exportgraphics(gcf, 'Results/signal_subtraction.png', ...
    'Resolution', 300);
