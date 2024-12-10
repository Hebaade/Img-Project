function [img] = SharpeningFilter_LD (I)
    mask = [1 0 0; 0 1 0; 0 0 -1];
    img = Filter(mask, I);
    figure, imshow(img), title('Left diagonal Sharpening Filter');
end 