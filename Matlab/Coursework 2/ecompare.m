% CS5810  -- Programming for data analysis 
%
%  Assignment 2 | Prof. Alberto Paccanaro
%  
% INSERT YOUR CODE HERE!
function n = ecompare(err)
n1 = [];
n2 = [];
for i = 1:length(err)
    n1(i) = myevalueA(err(i));
    disp(n1)
end
for j = 1:length(err)
    n2(j) = myevalueB(err(j));
    disp(n2)
end
n = plot(err,n1,'-r*','MarkerSize',8);
hold on
n = plot(err,n2,'--b*','MarkerSize',8);
xlabel('Input Err')
ylabel('N iterations for 2 different functions')
legend('n(myevalueA)','n(myevalueB)')
end