function [img] = verticalEdgeFilter (I)
    mask = [-1  0  1; -2  0  2; -1  0  1];
    img = Filter(mask, I);
    
end