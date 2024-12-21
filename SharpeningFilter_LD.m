function [img] = SharpeningFilter_LD (I)
    mask = [1 0 0; 0 1 0; 0 0 -1];
    img = Filter(mask, I);
   
end 