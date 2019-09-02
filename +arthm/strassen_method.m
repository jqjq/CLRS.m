function c = strassen_method(a, b)
    [n, ~] = size(a);
    if n == 1
        c = a * b;
    else
        m = n;
        n = 2 ^ ceil(log2(m));
        old_a = a;
        old_b = b;
        a = zeros(n);
        b = zeros(n);
        a(1:m,1:m) = old_a;
        b(1:m,1:m) = old_b;

        mid = n / 2;
        a11 = a(1:mid, 1:mid);
        a12 = a(1:mid, mid+1:n);
        a21 = a(mid+1:n, 1:mid);
        a22 = a(mid+1:n, mid+1:n);
        b11 = b(1:mid, 1:mid);
        b12 = b(1:mid, mid+1:n);
        b21 = b(mid+1:n, 1:mid);
        b22 = b(mid+1:n, mid+1:n);
        s1 = b12 - b22;
        s2 = a11 + a12;
        s3 = a21 + a22;
        s4 = b21 - b11;
        s5 = a11 + a22;
        s6 = b11 + b22;
        s7 = a12 - a22;
        s8 = b21 + b22;
        s9 = a11 - a21;
        s10 = b11 + b12;
        p1 = arithmetic.strassen_method(a11, s1);
        p2 = arithmetic.strassen_method(s2, b22);
        p3 = arithmetic.strassen_method(s3, b11);
        p4 = arithmetic.strassen_method(a22, s4);
        p5 = arithmetic.strassen_method(s5, s6);
        p6 = arithmetic.strassen_method(s7, s8);
        p7 = arithmetic.strassen_method(s9, s10);
        c(1:mid, 1:mid) = p5 + p4 - p2 + p6;
        c(1:mid, mid+1:n) = p1 + p2;
        c(mid+1:n, 1:mid) = p3 + p4;
        c(mid+1:n, mid+1:n) = p5 + p1 - p3 - p7;
        c = c(1:m,1:m);
    end
end
