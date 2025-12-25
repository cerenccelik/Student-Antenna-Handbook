# Student Antenna Handbook

![MATLAB](https://img.shields.io/badge/MATLAB-R2024b-orange)
![Subject](https://img.shields.io/badge/Subject-RF_%26_Antennas-blue)
![Status](https://img.shields.io/badge/Status-Educational-success)
![License](https://img.shields.io/badge/License-MIT-green)

> **"From Equation to Visualization."**
>
> An open-source digital handbook for engineering students, bridging the gap between electromagnetic theory and practical MATLAB simulations. This project visualizes the physics behind RF equations.

---

## Table of Contents

1. [Introduction](#-introduction)
2. [Module 01: EM Waves & Frequency](#01-electromagnetic-waves--frequency-theory)
3. [Module 02: Transmission Lines & Reflection](#02-transmission-lines--reflection-theory)
4. [Module 03: Impedance Matching (L-Network)](#03-impedance-matching-theory-l-network)
5. [Module 04: Antenna Parameters & Radiation](#04-antenna-parameters--radiation)
6. [Module 05: The Half-Wave Dipole](#05-the-half-wave-dipole-theory)
7. [Installation & Usage](#-installation--usage)

---

## Introduction

This repository is designed for Electrical & Electronics Engineering students specializing in RF and Microwave Engineering. It avoids rote memorization and focuses on **visual proof**.

Each module consists of:
* **Theory:** The core equations explaining the physical phenomenon.
* **Code:** A MATLAB script to simulate the concept.
* **Visualization:** Plots that demonstrate "why" the math works.

---

## 01. Electromagnetic Waves & Frequency Theory

### 1. Introduction: The Fabric of RF
Before designing antennas, we must understand The Electromagnetic (EM) Wave. An EM wave consists of an Electric Field ($E$) and a Magnetic Field ($H$) oscillating perpendicular to each other.

### 2. The Fundamental Equation
The most critical relationship in RF Engineering determines the physical size of every component. It links Speed of Light ($c$), Frequency ($f$), and Wavelength ($\lambda$):

$$c = f \times \lambda \quad \Rightarrow \quad \lambda = \frac{c}{f}$$

* **$c$:** $\approx 3 \times 10^8$ m/s (in air).
* **$f$ (Frequency):** Oscillations per second (Hz).
* **$\lambda$ (Wavelength):** Physical distance between peaks (meters).

### 3. Simulation & Visuals
**Script:** `wave_visualization.m`

The simulation compares a 1 GHz signal vs. a 2.4 GHz signal in the time domain.
* **Top Plot (1 GHz):** Longer wavelength, "stretched" wave.
* **Bottom Plot (2.4 GHz):** Shorter wavelength, oscillates much faster within the same time window.

![Wave Visualization](images/wave_visualizaton.png)

---

## 02. Transmission Lines & Reflection Theory

### 1. When a Wire Becomes a "Line"
In RF, a wire acts as a distributed network of Inductors ($L$) and Capacitors ($C$). Every cable has a **Characteristic Impedance ($Z_0$)**, typically **50 $\Omega$**. This is the ratio of Voltage to Current for a traveling wave ($Z_0 = \sqrt{L/C}$).

### 2. The Reflection Coefficient ($\Gamma$)
If the Load ($Z_L$) does not match the Line ($Z_0$), energy bounces back. We measure this with **Gamma ($\Gamma$)**:

$$\Gamma = \frac{Z_L - Z_0}{Z_L + Z_0}$$

* **Matched ($Z_L = 50\Omega$):** $\Gamma = 0$ (Ideal).
* **Open ($Z_L = \infty$):** $\Gamma = 1$ (Total Reflection).
* **Short ($Z_L = 0$):** $\Gamma = -1$ (Total Reflection, Inverted).

### 3. VSWR (Voltage Standing Wave Ratio)
The interference between forward and reflected waves creates standing waves:

$$VSWR = \frac{1 + |\Gamma|}{1 - |\Gamma|}$$

### 4. Simulation & Visuals
**Script:** `reflection_calculator.m`

The script calculates reflection parameters for various load scenarios.

![Reflection Calculator](images/reflection_calculator.png)

---

## 03. Impedance Matching Theory (L-Network)

### 1. Maximum Power Transfer
To transfer maximum power, the load impedance ($Z_L$) must be the complex conjugate of the source impedance ($Z_S$). Since most antennas are not naturally $50\Omega$, we use a matching network.

### 2. The L-Network Design
The simplest matching circuit uses two components (Inductor and Capacitor) arranged in an "L" shape.
* **Inductor ($L$):** Adds $+j\omega L$.
* **Capacitor ($C$):** Adds $1 / j\omega C$.

### 3. Simulation & Visuals
**Script:** `l_match_calculator.m`

The script solves the complex algebra to find the exact component values needed to match a high-impedance load (e.g., $100\Omega$) to a $50\Omega$ source at 2.4 GHz.

![L-Match Calculator](images/l_match_calculator.png)

---

## 04. Antenna Parameters & Radiation

### 1. Radiation Pattern
An antenna does not radiate power equally in all directions.
* **Isotropic:** Theoretical point source (Sphere).
* **Omnidirectional:** Radiates 360° in one plane (Donut).
* **Directional:** Focuses energy in a beam (Spotlight).

### 2. Directivity vs. Gain
* **Directivity ($D$):** How focused the beam is (Geometric).
* **Gain ($G$):** Directivity minus losses (Efficiency included).
    $$G_{dB} = 10 \log_{10}(\eta \times D)$$

### 3. Simulation & Visuals
**Script:** `plot_radiation.m`

The polar plot compares an Isotropic radiator (Blue dashed) against a Directional beam (Red solid). Note the "lobe" pointing to 0°, indicating high gain in that direction.

![Radiation Patterns](images/plot_radiation.png)

---

## 05. The Half-Wave Dipole Theory

### 1. The Standard
The Half-Wave Dipole is the reference antenna for RF engineering.
* **Length:** $\approx \lambda / 2$.
* **Impedance:** $\approx 73 \Omega$ (in free space).

### 2. Physics of Radiation
Radiation occurs because the current is accelerating. The current is maximum at the center and zero at the ends, creating a standing wave that detaches into space.

### 3. Simulation & Visuals
**Script:** `dipole_viz.m`

The plot shows the E-Plane radiation pattern.
* **Shape:** Figure-8 (or Donut in 3D).
* **Nulls:** No radiation along the wire axis ($0^\circ$ and $180^\circ$). This visually proves why you should never point the tip of a dipole antenna at the receiver.

![Dipole Visualization](images/dipole_viz.png)

---

## Usage

To use this handbook, you need **MATLAB** installed on your machine.

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/cerencelik/Student-Antenna-Handbook.git](https://github.com/cerencelik/Student-Antenna-Handbook.git)
    cd Student-Antenna-Handbook
    ```

2.  **Run Simulations:**
    Open MATLAB, navigate to the folder, and run any script directly in the Command Window:
    ```matlab
    >> wave_visualization
    >> l_match_calculator
    ```

