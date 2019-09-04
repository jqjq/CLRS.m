function a = mergesort_alt(a, p, r)
    if p < r
        q = fix((p + r)/2);
        a = srt.mergesort_alt(a, p, q);
        a = srt.mergesort_alt(a, q+1, r);
        a = merge(a, p, q, r);
    end
end

function a = merge(a, p, q, r)
    left = a(p:q);
    right = a(q+1:r);
    i = 1;
    j = 1;
    try
        for k = p:r
            if left(i) <= right(j)
                a(k) = left(i);
                i = i + 1;
            else
                a(k) = right(j);
                j = j + 1;
            end
        end
    catch
        if i <= length(left)
            a(k:r) = left(i:length(left));
        else
            a(k:r) = right(j:length(right));
        end
    end
end
