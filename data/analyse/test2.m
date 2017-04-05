file = ['/Users/baiweili/Documents/MATLAB/data/','data_ear.mat'];
a=load(file, 'matrix');
b = a.matrix(2,:);
% b = b(:);

bins = 100;
maxdat = max(b);
mindat = min(b);
bin_space = (maxdat - mindat) / bins;
% distribution = hist(b,100);
distribution = hist(b,bins);

figure(3)
hist(b,bins);

figure(4)
pdf = bins * distribution / ((sum(distribution )) * (maxdat - mindat));
% pdf = distribution / sum(distribution);
xtick = mindat : bin_space : maxdat - bin_space;
plot(xtick,pdf);
k = sum(pdf) * bin_space;
