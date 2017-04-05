% h = [453767 698229 782275 839651 687820 603733 567793];
% days = 1:7;
% plot(days,h);

M = csvread('/Users/baiweili/Desktop/weibo/hour2.csv');
M = M/1.55;
hours = 1:168;
figure;
plot(hours,M,'b-*');
% stem(x1,y1,'LineStyle','-.')
% plot(hours,M,'--gs',...
%     'LineWidth',2,...
%     'MarkerSize',10,...
%     'MarkerEdgeColor','b',...
%     'MarkerFaceColor',[0.5,0.5,0.5])
ylabel('Active Users');
xlabel('Time');
title('User Activity');
% set(gca,'xtick',[24 48 72 96 120 144 168]);
d = [24 48 72 96 120 144 168];
% d = d-12;
set(gca,'xtick',d);
set(gca,'xticklabel',{'Sun 00:00','Mon 00:00','Tue 00:00','Wed 00:00','Thu 00:00','Fri 00:00','Sat 00:00'})