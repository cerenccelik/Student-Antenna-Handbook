% L-Match Network Calculator
% Description: Calculates L and C values to match a Load to 50 Ohms
% Author: Ceren Celik

clc; clear;

f = 2.4e9;      % Frequency: 2.4 GHz
w = 2*pi*f;
Z0 = 50;        % Source
ZL = 100;       % Load (Pure Resistive for simplicity)

% Matching R_L > Z_0 configuration
Q = sqrt((ZL/Z0) - 1);

% Calculate Components
X_L = Q * Z0;       % Inductive Reactance
X_C = ZL / Q;       % Capacitive Reactance

L = X_L / w;
C = 1 / (w * X_C);

fprintf('--- L-Match Design for 2.4 GHz ---\n');
fprintf('Source: %d Ohm, Load: %d Ohm\n', Z0, ZL);
fprintf('Required Inductor (Series) : %.2f nH\n', L*1e9);
fprintf('Required Capacitor (Shunt) : %.2f pF\n', C*1e12);