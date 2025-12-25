% Antenna Radiation Pattern Plotter
% Description: Visualizes Isotropic vs Directional patterns
% Author: Ceren Celik

theta = linspace(0, 2*pi, 360);

% 1. Isotropic (Ideal Point Source)
rho_iso = ones(1, 360); 

% 2. Directional (e.g., Patch or Beam)
rho_dir = abs(cos(theta).^2); 

figure;
polarplot(theta, rho_iso, 'b--', 'LineWidth', 1.5);
hold on;
polarplot(theta, rho_dir, 'r-', 'LineWidth', 2);
legend('Isotropic (Omni)', 'Directional (Beam)');
title('Antenna Radiation Patterns');