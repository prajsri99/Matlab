function vec = evenodd(n,e)
v = randi([0,30],1,n);
disp(v)
if e==1
    ve = v(mod(v,2)==1);
    disp(ve)
    vec = ve(1:2:end);
    disp(vec)
elseif e==2
    ve = v(mod(v,2)==0);
    disp(ve)
    vec = ve(2:2:end);
    disp(vec)
end