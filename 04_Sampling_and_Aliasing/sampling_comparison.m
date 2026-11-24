clc;
clear;
close all;

% SAMPLING COMPARISON

% 1. Define signal parameters
A = 1;
fm = 10;

Fs_high = 100;
Fs_medium = 25;
Fs_low = 15;

% 2. Generate original signal
t = 0:0.001:1;
x = A*sin(2*pi*fm*t);

% 3. Generate sampled signals
t1 = 0:1/Fs_high:1;
x1 = A*sin(2*pi*fm*t1);

t2 = 0:1/Fs_medium:1;
x2 = A*sin(2*pi*fm*t2);

t3 = 0:1/Fs_low:1;
x3 = A*sin(2*pi*fm*t3);

% 4. Plot sampling comparison
figure;

subplot(3,1,1);
plot(t, x, 'b');
hold on;
stem(t1, x1, 'r', 'filled');
grid on;
title('Sampling at 100 Hz');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend('Original Signal', 'Sampled Signal');

subplot(3,1,2);
plot(t, x, 'b');
hold on;
stem(t2, x2, 'r', 'filled');
grid on;
title('Sampling at 25 Hz');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend('Original Signal', 'Sampled Signal');

subplot(3,1,3);
plot(t, x, 'b');
hold on;
stem(t3, x3, 'r', 'filled');
grid on;
title('Sampling at 15 Hz');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend('Original Signal', 'Sampled Signal');

% 5. Save result
if ~exist('Results', 'dir')
    mkdir('Results');
end

exportgraphics(gcf, 'Results/sampling_comparison.png', ...
    'Resolution', 300);
