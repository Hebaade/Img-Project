function [img] = averageFilter_box (I)
    mask = 1/9 * [1 1 1; 1 1 1; 1 1 1];
    img = Filter(mask, I);
 
end 