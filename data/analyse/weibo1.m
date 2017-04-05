file = '/Users/baiweili/Desktop/weibo/uid1count3.txt';
matrix = importdata(file);
% matrix.data
x1 = matrix(1:50,1);
y1 = matrix(1:50,2);
% x1=[5840 99 253 411 618 1597 2367 3326 4146 4559];
% y1=[21.431983 1.959294 3.744850 2.812044 3.609931 5.784277 8.906176 11.637822 12.951743 15.530759];
% ???????????
figure(1);
stem(x1,y1,'LineStyle','-.','MarkerFaceColor','red','MarkerEdgeColor','green');
xlabel('Tweet Amount');
ylabel('Users');
title('Weekly Microblog Datas');
% ???????????
% stem(x1,y1); 
