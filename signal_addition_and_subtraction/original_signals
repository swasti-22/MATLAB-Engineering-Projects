
clc;
clear;
close all;

% PROJECT 02: SIGNAL ADDITION AND SUBTRACTION

% 1. Define signal parameters
A1 = 1;
A2 = 1;

f1 = 2;
f2 = 2;

Fs = 1000;
T = 1/Fs;

t = 0:T:2;

% 2. Generate two sinusoidal signals
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t);

% 3. Perform signal addition and subtraction
y_add = x1 + x2;
y_sub = x1 - x2;

% 4. Display original signals
figure;

plot(t, x1, 'b', 'LineWidth', 1.5);
hold on;
plot(t, x2, 'r--', 'LineWidth', 1.5);

grid on;
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Original Signals');

legend('Signal 1', 'Signal 2');
xlim([0 2]);

exportgraphics(gcf, 'Results/original_signals.png', ...
    'Resolution', 300);
