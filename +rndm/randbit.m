function bit = randbit()
    while true
        a = biased_randbit();
        b = biased_randbit();
        if a > b
            bit = 0;
            return
        elseif a < b
            bit = 1;
            return
        end
    end
end

function bit = biased_randbit()
    bit = randi([1, 3]);
    if bit ~= 1
        bit = 0;
    end
end
