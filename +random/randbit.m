function ret = randbit()
    while true
        a = biased_randbit();
        b = biased_randbit();
        if a > b
            ret = 0;
            return
        elseif a < b
            ret = 1;
            return
        end
    end
end

function ret = biased_randbit()
    ret = randi([1, 3]);
    if ret ~= 1
        ret = 0;
    end
end
