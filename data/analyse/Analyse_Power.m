
% ear_head
aa = loadjson('../test2/data_ear_head.json');
for i = 1:301
alpha_ear_head(i) = aa{i}.pw_alpha;
% b=sort(alpha_ear_head(11:301));b=b(:,280);
beta_ear_head(i) = aa{i}.pw_beta;
end
for i = 1:301
Att_ear_head(i) = (aa{i}.Att);
end

% no connection
bb = loadjson('../test2/data.json');

for i = 1:301
alpha_none(i) = bb{i}.pw_alpha;
beta_none(i) = bb{i}.pw_beta;
end
for i = 1:301
Att_none(i) = (bb{i}.Att);
end

% ear_hand
cc = loadjson('../test2/data_ear_hand.json');
for i = 1:301
alpha_ear_hand(i) = cc{i}.pw_alpha;
beta_ear_hand(i) = cc{i}.pw_beta;
end
for i = 1:301
Att_ear_hand(i) = (cc{i}.Att);
end

% ear
dd = loadjson('../test2/data_ear.json');
for i = 1:301
alpha_ear(i) = dd{i}.pw_alpha;
beta_ear(i) = dd{i}.pw_beta;
end
for i = 1:301
Att_ear(i) = (dd{i}.Att);
end

% head
ee = loadjson('../test2/data_head.json');
for i = 1:301
alpha_head(i) = ee{i}.pw_alpha;
beta_head(i) = ee{i}.pw_beta;
end
for i = 1:301
Att_head(i) = (dd{i}.Att);
end

% hand
ff = loadjson('../test2/data_hand.json');
for i = 1:301
alpha_hand(i) = ff{i}.pw_alpha;
beta_hand(i) = ff{i}.pw_beta;
end
for i = 1:301
Att_hand(i) = (dd{i}.Att);
end

figure(1)
subplot(6,3,1);plot(alpha_ear_head(11:301));
title('alpha\_ear\_head');
subplot(6,3,4);plot(alpha_none(11:301));
title('alpha\_none');
subplot(6,3,7);plot(alpha_ear_hand(11:301));
title('alpha\_ear\_hand');
subplot(6,3,10);plot(alpha_ear(11:301));
title('alpha\_ear');
subplot(6,3,13);plot(alpha_head(11:301));
title('alpha\_head');
subplot(6,3,16);plot(alpha_hand(11:301));
title('alpha\_hand');
subplot(6,3,2);plot(beta_ear_head(11:301));
title('beta\_ear\_head');
subplot(6,3,5);plot(beta_none(11:301));
title('beta\_none');
subplot(6,3,8);plot(beta_ear_hand(11:301));
title('beta\_ear\_hand');
subplot(6,3,11);plot(beta_ear(11:301));
title('beta\_ear');
subplot(6,3,14);plot(beta_head(11:301));
title('beta\_head');
subplot(6,3,17);plot(beta_hand(11:301));
title('beta\_hand');
subplot(6,3,3);plot(Att_ear_head(11:301));
title('Att\_ear\_head');
subplot(6,3,6);plot(Att_none(11:301));
title('Att\_none');
subplot(6,3,9);plot(Att_ear_hand(11:301));
title('Att\_ear\_hand');
subplot(6,3,12);plot(Att_ear(11:301));
title('Att\_ear');
subplot(6,3,15);plot(Att_head(11:301));
title('Att\_head');
subplot(6,3,18);plot(Att_hand(11:301));
title('Att\_hand');
