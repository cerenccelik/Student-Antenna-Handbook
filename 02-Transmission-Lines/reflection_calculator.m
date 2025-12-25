% Transmission Line Reflection Calculator
% Description: Calculates Gamma and VSWR for different loads
% Author: Ceren Celik

clc; clear;

Z0 = 50; % Characteristic Impedance (Ohms)

% Define different Load Impedances
Loads = [50, 75, 100, 1e6, 0]; 
LoadNames = {'Matched  ', 'TVCable(75) ', 'High Z  ' , 'Open  ' , 'Short  '};

fprintf('%-10s | %-8s | %-8s | %-8s\n', 'Load', 'Z_L', 'Gamma', 'VSWR');
fprintf('--------------------------------------------------\n');

for i = 1:length(Loads)
    ZL = Loads(i);
    
    % Reflection Coefficient (Gamma)
    Gamma = (ZL - Z0) / (ZL + Z0);
    
    % VSWR Calculation
    if abs(Gamma) == 1
        VSWR = Inf;
    else
        VSWR = (1 + abs(Gamma)) / (1 - abs(Gamma));
    end
    
    fprintf('%-10s | %6.1f | %6.3f | %6.2f\n', LoadNames{i}, ZL, Gamma, VSWR);
end