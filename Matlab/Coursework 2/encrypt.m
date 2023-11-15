% CS5810  -- Programming for data analysis 
% 
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE!
function encrypted_message = encrypt(e,L,message)
encrypted_message = [];
if e == 1
    for i = 1:length(message)-1
        r_str = char(randi([int32('a'),int32('z')],1,L));
        encrypted_message = strcat(encrypted_message,message(i),r_str);
    end
    encrypted_message(end + 1) = message(end);
    disp(encrypted_message)

elseif e == 2
    letters = 'a':'z';
    for i = 1:length(message)
        msg = message(i);
        %msg1 = msg - 'a';
        mseg1 = msg + L;
        encrypted_message(i) = letters(1+mod(mseg1,26));
    end  
end
    disp(char(encrypted_message))
end