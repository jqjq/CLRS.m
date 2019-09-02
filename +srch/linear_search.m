function i = linear_search(a, v)
    for i = 1:length(a)
        if a(i) == v
            return
        end
    end
    i = 0;
end
