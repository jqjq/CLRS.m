function i = binary_search(a, v)
    low = 1;
    high = length(a);
    while low <= high
        i = fix((low+high)/2);
        if a(i) == v
            return
        elseif a(i) > v
            high = i - 1;
        else
            low = i + 1;
        end
    end
    i = 0;
end
