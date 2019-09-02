classdef dlnode < handle
    properties
       prev
       next
       key
    end
    methods
        function x = dlnode(key)
            x.key = key;
        end
    end
end
