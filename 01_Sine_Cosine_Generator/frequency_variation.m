clc;
clear;
close all;

% PROJECT 01 - EXPERIMENT 03: FREQUENCY VARIATION

% 1. Define signal parameters
A = 1;              % Amplitude
Fs = 1000;           % Sampling frequency in Hz
T = 1/Fs;            % Sampling period
t = 0:T:2;           % Time vector (2 seconds)

% 2. Define different frequencies
f1 = 2;
f2 = 5;

% 3. Generate sinusoidal signals
x1 = A*sin(2*pi*f1*t);
x2 = A*sin(2*pi*f2*t);

% 4. Plot both signals
figure;

plot(t, x1, 'b', 'LineWidth', 1.5);
hold on;

plot(t, x2, 'r--', 'LineWidth', 1.5);

% 5. Format the graph
grid on;
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Frequency Variation of Sinusoidal Signals');

legend('Frequency = 2 Hz', 'Frequency = 5 Hz');

% 6. Set axis limits
xlim([0 2]);
ylim([-1.5 1.5]);

% 7. Display signal information
fprintf('FREQUENCY VARIATION EXPERIMENT\n');
fprintf('Amplitude: %g\n', A);
fprintf('Signal 1 Frequency: %g Hz\n', f1);
fprintf('Signal 2 Frequency: %g Hz\n', f2);

% 8. Save the plot
exportgraphics(gcf, 'Results/frequency_variation.final.png', ...
    'Resolution', 300);
