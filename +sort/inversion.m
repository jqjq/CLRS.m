function [inv, a] = inversion(a, p, r)
    inv = 0;
    if p < r
        q = fix((p + r)/2);
        [x, a] = sort.inversion(a, p, q);
        inv = inv + x;
        [x, a] = sort.inversion(a, q+1, r);
        inv = inv + x;
        [x, a] = merge(a, p, q, r);
        inv = inv + x;
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
