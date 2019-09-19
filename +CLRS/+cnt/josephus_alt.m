function josephus_alt(n, m)
    import CLRS.ds.OSTree CLRS.ds.Node

    t = OSTree();
    for j = 1:n
        x = Node(j);
        t.insert(x)
    end
    k = n;
    j = m;
    while k >= 2
        x = t.select(j);
        fprintf('%d ', x.key);
        t.delete(x);
        k = k - 1;
        j = rem(j + m - 2, k) + 1;
    end
    fprintf('%d ', t.root.key);
end
