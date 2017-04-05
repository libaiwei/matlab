
ydata = random('Normal',0,1,1,1024);

bins = 100;
maxdat = max(ydata);
mindat = min(ydata);
bin_space = (maxdat - mindat) / bins;
xtick = mindat : bin_space : maxdat - bin_space;


distribution = hist(ydata,bins);
figure(1)
hist(ydata,bins)
% pdf = bins * distribution / ((sum(distribution )) * (maxdat - mindat));
 pdf = distribution / sum(distribution);
figure(2);
plot(xtick,pdf);
k = sum(pdf) * bin_space;