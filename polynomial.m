function y = polynomial(a, x)
    y = 0;
    for i = length(a)-1:0
        y = a(i+1) + x * y;
    end
end
