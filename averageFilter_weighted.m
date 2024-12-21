function [img] = averageFilter_weighted (I)
    mask = 1/16 * [1 2 1; 2 4 2; 1 2 1];
    img = Filter(mask, I);
    
end 