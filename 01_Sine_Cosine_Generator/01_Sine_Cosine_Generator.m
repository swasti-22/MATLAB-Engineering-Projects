clc;
clear;
close all;

% PROJECT 01: SINE AND COSINE WAVEFORM GENERATOR

% 1. Define signal parameters
A = 1;          % Amplitude
f = 2;          % Frequency in Hz
Fs = 1000;      % Sampling frequency
T = 1/Fs;       % Sampling period
t = 0:T:2;      % Time vector (2 seconds)

% 2. Generate sine and cosine signals
x = A*sin(2*pi*f*t);
y = A*cos(2*pi*f*t);

% 3. Plot the sine wave
figure;

plot(t, x, 'b', 'LineWidth', 1.5);
hold on;

% 4. Plot the cosine wave
plot(t, y, 'r', 'LineWidth', 1.5);

% 5. Add graph formatting
grid on;
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Sine and Cosine Waveforms');

legend('Sine Wave', 'Cosine Wave');

% 6. Set axis limits
xlim([0 2]);
ylim([-1.5 1.5]);
