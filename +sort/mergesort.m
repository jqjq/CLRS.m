function a = mergesort(a, p, r)
    if p < r
        q = fix((p + r)/2);
        a = sort.mergesort(a, p, q);
        a = sort.mergesort(a, q+1, r);
        a = merge(a, p, q, r);
    end
end

function a = merge(a, p, q, r)
    left = [a(p:q), Inf];
    right = [a(q+1:r), Inf];
    i = 1;
    j = 1;
    for k = p:r
        if left(i) <= right(j)
            a(k) = left(i);
            i = i + 1;
        else
            a(k) = right(j);
            j = j + 1;
        end
    end
end
