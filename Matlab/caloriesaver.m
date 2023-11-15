function avg = caloriesaver(cal)
persistent s c 

if isempty(s)
    s = 0;
    c = 0;
end

if cal==0
avg = 0;
s = 0;
c = 0;
return
end

sum = s + cal;
count = c + 1;
avg = sum / count;
return

