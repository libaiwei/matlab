% ear_head
aa = loadjson('../test1/data_ear_head.json');
for i = 1:301
alpha_ear_head(i) = aa{i}.pw_alpha;
% b=sort(alpha_ear_head(11:301));b=b(:,280);
beta_ear_head(i) = aa{i}.pw_beta;
end
for i = 1:301
Att_ear_head(i) = (aa{i}.Att);
end

% no connection
bb = loadjson('../test1/data.json');

for i = 1:301
alpha_none(i) = bb{i}.pw_alpha;
beta_none(i) = bb{i}.pw_beta;
end
for i = 1:301
Att_none(i) = (bb{i}.Att);
end
figure;
hist(alpha_ear_head(11:301),100)
figure;
hist(alpha_none(11:301),100)
