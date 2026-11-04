clc;
clear;
close all;

% PROJECT 01 - EXPERIMENT 04: PHASE VARIATION

% 1. Define signal parameters
A = 1;                  % Amplitude
f = 2;                  % Frequency in Hz
Fs = 1000;              % Sampling frequency in Hz
T = 1/Fs;               % Sampling period
t = 0:T:2;              % Time vector (2 seconds)

% 2. Define different phase angles
phi1 = 0;               % Phase = 0 radians
phi2 = pi/2;             % Phase = 90 degrees

% 3. Generate sinusoidal signals
x1 = A*sin(2*pi*f*t + phi1);
x2 = A*sin(2*pi*f*t + phi2);

% 4. Plot both signals
figure;

plot(t, x1, 'b', 'LineWidth', 1.5);
hold on;

plot(t, x2, 'r--', 'LineWidth', 1.5);

% 5. Format the graph
grid on;
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Phase Variation of Sinusoidal Signals');

legend('Phase = 0 degrees', 'Phase = 90 degrees');

% 6. Set axis limits
xlim([0 2]);
ylim([-1.5 1.5]);

% 7. Display signal information
fprintf('PHASE VARIATION EXPERIMENT\n');
fprintf('Amplitude: %g\n', A);
fprintf('Frequency: %g Hz\n', f);
fprintf('Signal 1 Phase: 0 degrees\n');
fprintf('Signal 2 Phase: 90 degrees\n');

% 8. Save the plot
exportgraphics(gcf, 'Results/phase_comparison.png', ...
    'Resolution', 300);
