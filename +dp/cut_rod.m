function [q, r] = cut_rod(p, n)
    r = zeros(1, n);
    for j = 1:n
        q = p(j);
        for i= 1:j-1
            q = max(q, p(i)+ r(j - i));
        end
        r(j) = q;
    end
end
