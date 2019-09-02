function low = randint(low, high)
    while high > low
        mid = fix((low + high) / 2);
        if randi([0, 1])
            low = mid + 1;
        else
            high = mid;
        end
    end
end
