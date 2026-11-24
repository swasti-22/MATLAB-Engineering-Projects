clc;
clear;
close all;

% ALIASING ANALYSIS

% 1. Define parameters
A = 1;
fm = 10;
Fs = 15;

T = 1/Fs;

% 2. Calculate alias frequency
f_alias = abs(fm - Fs);

% 3. Generate original signal
t = 0:0.001:1;
x = A*sin(2*pi*fm*t);

% 4. Generate undersampled signal
ts = 0:T:1;
xs = A*sin(2*pi*fm*ts);

% 5. Generate alias signal
x_alias = A*sin(2*pi*f_alias*ts);

% 6. Display alias frequency
fprintf('Original Signal Frequency: %.2f Hz\n', fm);
fprintf('Sampling Frequency: %.2f Hz\n', Fs);
fprintf('Alias Frequency: %.2f Hz\n', f_alias);

% 7. Plot comparison
figure;

plot(t, x, 'b', 'LineWidth', 1.5);
hold on;

stem(ts, xs, 'r', 'filled');

plot(t, A*sin(2*pi*f_alias*t), 'g--', ...
    'LineWidth', 1.5);

grid on;
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Aliasing Effect');

legend('Original 10 Hz Signal', ...
    'Undersampled Points', ...
    '5 Hz Alias Signal');

xlim([0 1]);

% 8. Save result
if ~exist('Results', 'dir')
    mkdir('Results');
end

exportgraphics(gcf, 'Results/aliasing_analysis.png', ...
    'Resolution', 300);
