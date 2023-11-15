function encrypted_message = encryption(e,L,message)
encrypted_message = [];
if e == 1
    for i = 1:length(message)-1
        r_str = char(randi([int32('a'),int32('z')],1,L));
        encrypted_message = [encrypted_message,message(i),r_str];
    end
    encrypted_message(end + 1) = message(end);
    disp(encrypted_message)

elseif e == 2
    alpha = 'a':'z';
    for i = 1:length(message)
        msg = message(i)-'a'+L;
        encrypted_message(i) = alpha(1+mod(msg,26));
    end
   
end
    disp(char(encrypted_message))
end


    