function a = selectionsort(a)
    for i = 1:(length(a)-1)
        minimum = Inf;
        for j = i:length(a)
            if a(j) < minimum
                smallest = j;
                minimum = a(smallest);
            end
        end
        [a(i), a(smallest)] = deal(a(smallest), a(i));
    end
end
