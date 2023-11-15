function data = outpatientreport()
filename = 'myhospital.mat';
m = matfile(filename);
[r,c] = size(m,'LastName');
for i = 1:r
    data(i).LastName = char(string(m.LastName(i,1)));
    data(i).Sex = char(string(m.Sex(i,1)));
    data(i).Age = m.Age(i,1);
    data(i).Weight = m.Weight(i,1);
    data(i).isSmoker = m.isSmoker(i,1);
end

s = randperm(10,10);
for j = 1:length(s)
    fprintf('%s %s %d %.1f %d \n',data(j).LastName,data(j).Sex,data(j).Age,data(j).Weight,data(j).isSmoker)
end

issmoking = categorical(m.isSmoker);
boxchart(issmoking,m.Weight)
xlabel("isSmoker?")
ylabel("Weight(Kg)")









