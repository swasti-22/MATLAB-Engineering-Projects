clc;
clear;
close all;

% PROJECT 01 - EXPERIMENT 02: AMPLITUDE VARIATION

% 1. Define signal parameters
f = 2;              % Frequency in Hz
Fs = 1000;           % Sampling frequency in Hz
T = 1/Fs;            % Sampling period
t = 0:T:2;           % Time vector (2 seconds)

% 2. Define different amplitudes
A1 = 1;
A2 = 3;

% 3. Generate sinusoidal signals
x1 = A1*sin(2*pi*f*t);
x2 = A2*sin(2*pi*f*t);

% 4. Plot both signals
figure;

plot(t, x1, 'b', 'LineWidth', 1.5);
hold on;

plot(t, x2, 'r--', 'LineWidth', 1.5);

% 5. Format the graph
grid on;
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Amplitude Variation of Sinusoidal Signals');

legend('Amplitude = 1', 'Amplitude = 3');

% 6. Set axis limits
xlim([0 2]);
ylim([-3.5 3.5]);

% 7. Display signal information
fprintf('AMPLITUDE VARIATION EXPERIMENT\n');
fprintf('Frequency: %g Hz\n', f);
fprintf('Signal 1 Amplitude: %g\n', A1);
fprintf('Signal 2 Amplitude: %g\n', A2);

% 8. Save the plot
exportgraphics(gcf, 'Results/amplitude_variation.png', ...
    'Resolution', 300);
