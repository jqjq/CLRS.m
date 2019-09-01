function [low, high, maximum_sum] = maximum_subarray(a)
    if any(a > 0)
        maximum_sum = -1;
        sum = 0;
        i = 1;
        for j = 1:length(a)
            sum = sum + a(j);
            if sum < 0
                i = j + 1;
                sum = 0;
            elseif sum > maximum_sum
                [low, high, maximum_sum] = deal(i, j, sum);
            end
        end
    else
        [low, high, maximum_sum] = deal(0, 0, 0);
    end
end
