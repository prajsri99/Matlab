function f = flipvector(v)
if isrow(v)
    f = flip(v);
    disp(f)
elseif iscolumn(v)
    f = flipud(v);
    disp(f)
else
    f = v;
    disp(f)
end