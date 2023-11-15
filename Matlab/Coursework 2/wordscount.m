% CS5810  -- Programming for data analysis 
% 
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!
function freq = wordscount(n)
f = fopen('TheTortoiseAndTheHare.txt');
ff = textscan(f,'%s');
fclose(f);
words = ff{:};
disp(words)
[uniique_words,words_i,words_j] = unique(words);
cnt_words = histcounts(words_j,(1:max(words_j)+1)')';
freq = strcat(uniique_words,num2cell(cnt_words));
