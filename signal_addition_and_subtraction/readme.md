# Project 02: Signal Addition and Subtraction Using MATLAB

## 1. Project Overview

This project demonstrates the fundamental operations of signal addition and subtraction using MATLAB. Two sinusoidal signals are generated, and mathematical operations are performed on them to obtain resultant signals.

The project explores the principle of superposition and helps understand how the amplitude, frequency and phase of individual signals affect their resultant waveform.

## 2. Objectives

- Generate two sinusoidal signals using MATLAB.
- Perform signal addition and subtraction.
- Visualise the original and resultant waveforms.
- Understand the principle of superposition.
- Analyse the effect of signal parameters on the resultant waveform.

## 3. Mathematical Background

The two input signals are represented as:

**Signal 1:**

\[
x_1(t)=A_1\sin(2\pi f_1t)
\]

**Signal 2:**

\[
x_2(t)=A_2\sin(2\pi f_2t)
\]

### Signal Addition

The resultant signal obtained by adding the two input signals is:

\[
y_{\text{add}}(t)=x_1(t)+x_2(t)
\]

### Signal Subtraction

The resultant signal obtained by subtracting the second signal from the first is:

\[
y_{\text{sub}}(t)=x_1(t)-x_2(t)
\]

## 4. Simulation Parameters

| Parameter | Signal 1 | Signal 2 |
|---|---:|---:|
| Amplitude | 3 | 1 |
| Frequency | 2 Hz | 2 Hz |
| Sampling Frequency | 1000 Hz | 1000 Hz |
| Initial Phase | 0° | 0° |

**Simulation Duration:** 2 seconds

## 5. MATLAB Implementation

The project is divided into three MATLAB scripts:

| Script | Description |
|---|---|
| `signal_addition_subtraction.m` | Generates and displays the original signals |
| `signal_addition.m` | Performs and plots signal addition |
| `signal_subtraction.m` | Performs and plots signal subtraction |

### MATLAB Functions Used

- `sin()` – Generates sinusoidal signals.
- `plot()` – Displays signal waveforms.
- `hold on` – Allows multiple signals to be plotted in the same figure.
- `grid on` – Displays the plot grid.
- `xlabel()` and `ylabel()` – Labels the graph axes.
- `legend()` – Identifies plotted signals.
- `exportgraphics()` – Exports simulation figures as image files.

## 6. Simulation Results

### 6.1 Original Signals

Both input sinusoidal signals are generated and displayed in the same figure.

![Original Signals](Results/original_signals.png)

### 6.2 Signal Addition

The two input signals are added point by point to obtain the resultant waveform.

![Signal Addition](Results/signal_addition.png)

### 6.3 Signal Subtraction

The second input signal is subtracted from the first to obtain the resultant waveform.

![Signal Subtraction](Results/signal_subtraction.png)

## 7. Observations

For the initial simulation parameters, both signals have identical amplitudes, frequencies and phases.

- The original signals overlap because their parameters are identical.
- Signal addition produces a resultant sinusoidal signal with amplitude 2.
- Signal subtraction produces a zero-valued signal because the two input signals are identical.

These results demonstrate constructive addition and complete cancellation for identical, in-phase signals.

## 8. Key Learnings

- Understood the principle of signal superposition.
- Learned to perform mathematical operations on signal vectors in MATLAB.
- Explored the effect of adding and subtracting sinusoidal signals.
- Practised waveform visualisation and figure export.
- Understood how signal parameters influence resultant waveforms.

## 9. Future Improvements

- Experiment with signals having different amplitudes.
- Analyse the effect of different frequencies.
- Investigate phase differences between input signals.
- Explore constructive and destructive interference under different conditions.

---

**Project 02 of 20 | MATLAB Engineering Challenge**
