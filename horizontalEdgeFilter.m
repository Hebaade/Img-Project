function [img] = horizontalEdgeFilter (I)
    mask = [-1 -2 -1 ;0  0  0; 1  2  1];
    img = Filter(mask, I);
     
end