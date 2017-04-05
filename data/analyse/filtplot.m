function [alpha, beta] = filtplot(mydat)

alpha = alphafilter(mydat);
beta  = betafilter(mydat);
figure, plot(beta,'g')
hold on, plot(alpha,'r')