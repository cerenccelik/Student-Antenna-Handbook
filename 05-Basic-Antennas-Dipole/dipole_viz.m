% Half-Wave Dipole Pattern Visualization
% Author: Ceren Celik

theta = linspace(0.01, 2*pi, 500); % Avoid 0 div error

% Half-Wave Dipole Pattern Formula
E_field = abs( (cos((pi/2)*cos(theta))) ./ sin(theta) );

figure;
polarplot(theta, E_field, 'm', 'LineWidth', 2);
title('Half-Wave Dipole Radiation Pattern (E-Plane)');
rlim([0 1.2]);