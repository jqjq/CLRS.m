function exist = two_sum(s, v)
    s = sort(s);
    for i = 1:(length(s)-1)
        j = search.binary_search(s(i+1:length(s)), v - s(i));
        if j ~= 0
            exist = true;
            return
        end
    end
    exist = false;
end
