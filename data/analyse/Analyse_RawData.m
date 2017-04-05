

% examine head_ear % normal
load ../wcy/data_ear1.mat

mydat_ear_head = matrix(1:2, :)';
%notched = notch46hz(mydat);

[alpha_ear_head, beta_ear_head] = filtplot(mydat_ear_head);

% examine 'none connected'
load ../wcy/data_ear2.mat
mydat_none = matrix(1:2, :)';

[alpha_none, beta_none] = filtplot(mydat_none);