classdef Node < handle
    properties
       key = 0
       data = 0
       color = 0
       height = 0
       prev = 0
       next = 0
       left = 0
       right = 0
       parent = 0
    end

    methods
        function obj = Node(varargin)
            if nargin >= 1
                obj.key = varargin{1};
                if nargin == 2
                    obj.data = varargin{2};
                end
            end              
        end
    end
end
