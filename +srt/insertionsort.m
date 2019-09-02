function a = insertionsort(a)
    for j = 2:length(a)
        key = a(j);
        i = j - 1;
        while i > 0 && a(i) > key
            a(i+1) = a(i);
            i = i - 1;
        end
        a(i+1) = key;
    end
end
