% Electromagnetic Wave Visualization
% Description: Visualizes relationship between Frequency and Wavelength


clc; clear; close all;

% Parameters
c = 3e8;            % Speed of light (m/s)
f1 = 1e9;           % 1 GHz
f2 = 2.4e9;         % 2.4 GHz (Wi-Fi/Bluetooth)

% Calculate Wavelengths
lambda1 = c / f1;
lambda2 = c / f2;

% Time vector (2 nanoseconds snapshot)
t = linspace(0, 2e-9, 1000); 

% Generate Waves (Sinusoids)
wave1 = sin(2 * pi * f1 * t);
wave2 = sin(2 * pi * f2 * t);

% Visualization
figure('Name', 'Frequency vs Wavelength');

subplot(2,1,1);
plot(t*1e9, wave1, 'LineWidth', 2, 'Color', 'b');
title(['Frequency: 1 GHz, \lambda = ' num2str(lambda1*100, '%.1f') ' cm']);
ylabel('Amplitude'); grid on;
ylim([-1.5 1.5]);

subplot(2,1,2);
plot(t*1e9, wave2, 'LineWidth', 2, 'Color', 'r');
title(['Frequency: 2.4 GHz, \lambda = ' num2str(lambda2*100, '%.1f') ' cm']);
xlabel('Time (ns)'); ylabel('Amplitude'); grid on;
ylim([-1.5 1.5]);

