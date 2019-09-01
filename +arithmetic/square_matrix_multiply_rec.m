function c = square_matrix_multiply_rec(a, b)
    [n, ~] = size(a);
    c = zeros(n, n);
    if n == 1
        c(1,1) = a(1,1) * b(1,1);
    else
        mid = n / 2;
        a11 = a(1:mid, 1:mid);
        a12 = a(1:mid, mid+1:n);
        a21 = a(mid+1:n, 1:mid);
        a22 = a(mid+1:n, mid+1:n);
        b11 = b(1:mid, 1:mid);
        b12 = b(1:mid, mid+1:n);
        b21 = b(mid+1:n, 1:mid);
        b22 = b(mid+1:n, mid+1:n);
        c(1:mid, 1:mid) = ...
            arithmetic.square_matrix_multiplyr(a11, b11) + ...
            arithmetic.square_matrix_multiplyr(a12, b21);
        c(1:mid, mid+1:n) = ...
            arithmetic.square_matrix_multiplyr(a11, b12) + ...
            arithmetic.square_matrix_multiplyr(a12, b22);
        c(mid+1:n, 1:mid) = ...
            arithmetic.square_matrix_multiplyr(a21, b11) + ...
            arithmetic.square_matrix_multiplyr(a22, b21);
        c(mid+1:n, mid+1:n) = ...
            arithmetic.square_matrix_multiplyr(a21, b12) + ...
            arithmetic.square_matrix_multiplyr(a22, b22);
    end
end
