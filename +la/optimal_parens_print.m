function optimal_parens_print(s, i, j)
    if i == j
        fprintf("A%d", i);
    else
        fprintf("(");
        la.optimal_parens_print(s, i, s(i,j));
        la.optimal_parens_print(s, s(i,j)+1, j);
        fprintf(")");
    end
end
