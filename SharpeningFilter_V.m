function [img] = SharpeningFilter_V (I)
    mask = [0 1 0; 0 1 0; 0 -1 0];
    img = Filter(mask, I);
   
end 