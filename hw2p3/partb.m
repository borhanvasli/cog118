close all;
clc;
%part b
ab=[1 1;0.5 0.5;50 50];
sp_idx=[4 3 1];
tally=[0 0];
ii=[1 2 3 4 5 6 7 8 9 10 11];
j=1;
flag=0;
plotbetapdfs(ab,sp_idx,tally);

for i=1:2048


power=ii(j);
if i==(2^power)
    sp_idx(3)=sp_idx(3)+ 1;
    flag=1;
    j=j+1;
end



P=[0.25,0.75];
x=mnrnd(1,P,1);
tally=tally+x;
tally_matrix=[tally;tally;tally];

ab=ab+tally_matrix;
if flag==1
plotbetapdfs(ab,sp_idx,tally);
flag=0;
end
end