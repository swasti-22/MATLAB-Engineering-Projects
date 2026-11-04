# Project 02: Signal Addition and Subtraction Using MATLAB

## 1. Project Overview

This project demonstrates the fundamental mathematical operations of signal addition and subtraction using MATLAB.

Two sinusoidal signals are generated and combined through point-by-point addition and subtraction. The resulting waveforms are visualised to understand the principle of superposition and the influence of signal amplitudes on the resultant waveform.

## 2. Objectives

- Generate two sinusoidal signals using MATLAB.
- Perform signal addition and subtraction.
- Visualise the original and resultant waveforms.
- Understand the principle of superposition.
- Analyse the effect of amplitude differences on resultant signals.

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

\[
y_{\text{add}}(t)=x_1(t)+x_2(t)
\]

### Signal Subtraction

\[
y_{\text{sub}}(t)=x_1(t)-x_2(t)
\]

## 4. Simulation Parameters

### Original Signals

| Parameter | Signal 1 | Signal 2 |
|---|---:|---:|
| Amplitude | 1 | 1 |
| Frequency | 2 Hz | 2 Hz |
| Initial Phase | 0° | 0° |

### Addition Experiment

| Parameter | Signal 1 | Signal 2 |
|---|---:|---:|
| Amplitude | 3 | 1 |
| Frequency | 2 Hz | 2 Hz |
| Initial Phase | 0° | 0° |

### Subtraction Experiment

| Parameter | Signal 1 | Signal 2 |
|---|---:|---:|
| Amplitude | 3 | 5 |
| Frequency | 2 Hz | 2 Hz |
| Initial Phase | 0° | 0° |

**Common Simulation Parameters:**

- Sampling Frequency: 1000 Hz
- Simulation Duration: 2 seconds
- Sampling Period: 0.001 seconds

## 5. MATLAB Implementation

The project consists of three independent MATLAB scripts:

| Script | Description |
|---|---|
| `original_signals.m` | Generates and displays the two original sinusoidal signals |
| `signal_addition.m` | Performs and visualises signal addition |
| `signal_subtraction.m` | Performs and visualises signal subtraction |

### MATLAB Functions Used

- `sin()` – Generates sinusoidal signals.
- `plot()` – Displays signal waveforms.
- `hold on` – Allows multiple signals to be plotted in the same figure.
- `grid on` – Displays the plot grid.
- `xlabel()` and `ylabel()` – Label the graph axes.
- `legend()` – Identifies plotted signals.
- `exportgraphics()` – Exports simulation figures as image files.
- `mkdir()` – Creates the Results directory if it does not exist.

## 6. Simulation Results

### 6.1 Original Signals

Both input signals have identical amplitudes, frequencies and phases. Therefore, their waveforms overlap.

![Original Signals](Results/original_signals.png)

### 6.2 Signal Addition

The input signals have amplitudes of 3 and 1, respectively.

Since their frequencies and phases are identical, the resultant amplitude is:

\[
A_{\text{resultant}}=3+1=4
\]

![Signal Addition](Results/signal_addition.png)

### 6.3 Signal Subtraction

The input signals have amplitudes of 3 and 5, respectively.

The resultant signal is:

\[
y(t)=3\sin(4\pi t)-5\sin(4\pi t)
\]

\[
y(t)=-2\sin(4\pi t)
\]

The resultant waveform has an amplitude magnitude of 2 and is inverted relative to the original sine waveform.

![Signal Subtraction](Results/signal_subtraction.png)

## 7. Observations

- The original signals overlap because they have identical amplitudes, frequencies and phases.
- Signal addition produces a resultant amplitude of 4.
- Signal subtraction produces an inverted sinusoidal waveform with an amplitude magnitude of 2.
- The resultant waveform depends on the amplitudes, frequencies and relative phases of the input signals.

## 8. Key Learnings

- Understood the mathematical principle of signal superposition.
- Learned to perform element-wise operations on signal vectors.
- Explored the effects of signal addition and subtraction.
- Understood amplitude reinforcement and waveform inversion.
- Practised MATLAB waveform visualisation and figure export.

## 9. Future Improvements

- Experiment with signals having different frequencies.
- Investigate the effect of phase differences.
- Study constructive and destructive interference.
- Compare resultant waveforms under different signal conditions.

---

**Project 02 of 20 | MATLAB Engineering Challenge**

