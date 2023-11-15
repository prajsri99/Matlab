% CS5810  -- Programming for data analysis 
%
%  Assignment 2 | Prof. Alberto Paccanaro
% 
% INSERT YOUR CODE HERE! 
function original_message = decrypt(e,L,encrypted_message)
original_message = [];
if e == 2
    alphabet = 'a':'z';
    for i = 1:length(encrypted_message)
        msg = encrypted_message(i);
        message = msg - 'a';
        new_message = message - L;
        original_message(i) = alphabet(1+mod(new_message,26));
        disp(char(original_message))
    end
    
elseif e == 1
    original_message = [];
    index = 1:L+1:length(encrypted_message);
    original_message = [original_message,encrypted_message(index)];
end
end
    