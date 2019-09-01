function [low, high, maximum_sum] = maximum_subarray_bf(a)
    maximum_sum = -Inf;    
    for i = 1:length(a)
        sum = 0;
        for j = i:length(a)
            sum = sum + a(j);
            if sum > maximum_sum
                [low, high, maximum_sum] = deal(i, j, sum);
            end
        end
    end
end
