function y = notch50hz(x)
%NOTCH50HZ Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 8.6 and the DSP System Toolbox 9.1.
% Generated on: 14-Dec-2016 14:25:38

persistent Hd;

if isempty(Hd)
    
    N  = 20;    % Order
    F0 = 0.4;  % Center frequency
    Q  = 5;    % Q-factor
    
    h = fdesign.notch('N,F0,Q', N, F0, Q);
    
    Hd = design(h, 'butter', ...
        'SOSScaleNorm', 'Linf');
    
    
    
    set(Hd,'PersistentMemory',true);
    
end

y = filter(Hd,x);


