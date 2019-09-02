function c = square_matrix_multiply(a, b)
    [n, ~] = size(a);
    c = zeros(n, n);
    for i = 1:n
        for j = 1:n
            for k = 1:n
                c(i,j) = c(i, j) + a(i,k) * b(k, j);
            end
        end
    end
end
