function c = binary_add(a, b)
    carry = 0;
    c = zeros(1, length(a)+1);
    for i = length(a):-1:1
        sum = a(i) + b(i) + carry;
        c(i+1) = rem(sum, 2);
        carry = sum >= 2;
    end
    c(1) = carry;
end
