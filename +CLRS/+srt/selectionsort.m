function a = selectionsort(a)
    n = length(a);
    for j = 1:n-1
        smallest = j;
        for i = j+1:n
            if a(i) < a(smallest)
                smallest = i;
            end
        end
        [a(j), a(smallest)] = deal(a(smallest), a(j));
    end
end
