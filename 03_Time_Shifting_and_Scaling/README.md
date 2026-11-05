# Project 03: Time Shifting and Scaling of Signals

## Aim
To study and simulate the effects of time shifting, time scaling, and time reversal on continuous-time sinusoidal signals using MATLAB.

## Signal Parameters

| Parameter | Value |
|---|---:|
| Amplitude (A) | 1 |
| Frequency (f) | 2 Hz |
| Sampling Frequency (Fs) | 1000 Hz |
| Sampling Period (T) | 0.001 s |
| Time Range | -5 to 5 seconds |

## Mathematical Operations

1. **Original Signal:** \(x(t)=\sin(2\pi ft)\)
2. **Time Delay:** \(x(t-2)\)
3. **Time Advance:** \(x(t+2)\)
4. **Time Compression:** \(x(2t)\)
5. **Time Expansion:** \(x(0.5t)\)
6. **Time Reversal:** \(x(-t)\)

## MATLAB Scripts

- `original_signal.m` – Generates and plots the original sinusoidal signal.
- `time_shifting.m` – Demonstrates time delay and time advance.
- `time_scaling.m` – Demonstrates time compression and expansion.
- `time_reversal.m` – Demonstrates time reversal.

## Results

All generated plots are saved in the `Results/` directory.

## Key Observations

- Time delay shifts a signal towards the right.
- Time advance shifts a signal towards the left.
- Time compression increases the frequency of oscillations.
- Time expansion decreases the frequency of oscillations.
- Time reversal reflects the signal about the vertical axis.
- These operations change the time characteristics of the signal, not its amplitude.

## Tools and Technologies

- MATLAB
- Signal Processing fundamentals
- MATLAB plotting and `exportgraphics()` functions

## Learning Outcomes

This project demonstrates the fundamental transformations of continuous-time signals and develops practical understanding of signal manipulation using MATLAB.
