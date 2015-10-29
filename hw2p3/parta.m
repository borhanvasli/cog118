%%part a
ab=[1 1;0.5 0.5;50 50];
sp_idx=[3 2 1];
tally=[0 0];
plotbetapdfs(ab,sp_idx,tally);
for i=1:5
sp_idx(3)=sp_idx(3)+ 1
P=[0.25,0.75];
x=mnrnd(1,P,1);
tally=tally+x
tally_matrix=[tally;tally;tally];
%%% Booooooooooooriiiiiito
ab=ab+tally_matrix
plotbetapdfs(ab,sp_idx,tally);

end