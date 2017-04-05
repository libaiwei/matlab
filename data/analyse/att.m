attvalue1 = loadjson('../wcy/data_ear1.json');
attvalue2 = loadjson('../wcy/data_ear2.json');
for i = 1:301
Att1(i) = attvalue1{i}.pw_alpha;
end
figure(1)
subplot(1,1,1);plot(Att1(11:301));
title('alpha\_ear\_head1');

for i = 1:301
Att2(i) = attvalue2{i}.pw_alpha;
end
figure(2)
subplot(1,1,1);plot(Att2(11:301));
title('alpha\_ear\_head2');