function y = betafilter(x)
%BETAFILTER Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 8.6 and the DSP System Toolbox 9.1.
% Generated on: 14-Dec-2016 14:50:56

persistent Hd;

if isempty(Hd)
    
    Fstop1 = 15;   % First Stopband Frequency
    Fpass1 = 16;   % First Passband Frequency
    Fpass2 = 30;   % Second Passband Frequency
    Fstop2 = 31;   % Second Stopband Frequency
    Astop1 = 100;  % First Stopband Attenuation (dB)
    Apass  = 1;    % Passband Ripple (dB)
    Astop2 = 60;   % Second Stopband Attenuation (dB)
    Fs     = 250;  % Sampling Frequency
    
    h = fdesign.bandpass('fst1,fp1,fp2,fst2,ast1,ap,ast2', Fstop1, Fpass1, ...
        Fpass2, Fstop2, Astop1, Apass, Astop2, Fs);
    
    Hd = design(h, 'butter', ...
        'MatchExactly', 'stopband', ...
        'SOSScaleNorm', 'Linf');
    
    
    
    set(Hd,'PersistentMemory',true);
    
end

y = filter(Hd,x);


