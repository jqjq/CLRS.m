function mid = binary_search_rec(a, v, low, high)
    if low > high
        mid = 0;
        return
    end
    mid = fix((low+high)/2);
    if v == a(mid)
        return
    elseif v > a(mid)
        mid = srch.binary_search_rec(a, v, mid+1, high);
    else
        mid = srch.binary_search_rec(a, v, mid+1, high);
    end
end
