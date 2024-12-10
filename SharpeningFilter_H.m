function [img] = SharpeningFilter_H (I)
    mask = [0 0 0; 1 1 -1; 0 0 0];
    img = Filter(mask, I);
    figure, imshow(img), title('Horizontal Sharpening Filter');
end 