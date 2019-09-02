function [total_inv, a] = inversion(a, p, r)
    total_inv = 0;
    if p < r
        q = fix((p + r)/2);
        [inv, a] = srt.inversion(a, p, q);
        total_inv = total_inv + inv;
        [inv, a] = srt.inversion(a, q+1, r);
        total_inv = total_inv + inv;
        [inv, a] = merge(a, p, q, r);
        total_inv = total_inv + inv;
    end
end

function [inv, a] = merge(a, p, q, r)
    left = a(p:q);
    right = a(q+1:r);
    i = 1;
    j = 1;
    inv = 0;
    try
        for k = p:r
            if left(i) <= right(j)
                a(k) = left(i);
                i = i + 1;
            else
                inv = inv + length(left) - i + 1;
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
