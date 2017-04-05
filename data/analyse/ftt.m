L = 75250;
Fs = 250;
Y = fft(alpha_ear_head(:,1));
P2 = abs(Y/75250);
P1 = P2(1:75250/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
plot(f,P1)
title('Single-Sided Amplitude Spectrum of S(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')