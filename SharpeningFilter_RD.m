function [img] = SharpeningFilter_RD (I)
    mask = [0 0 1; 0 1 0; -1 0 0];
    img = Filter(mask, I);
    figure, imshow(img), title('Right diagonal Sharpening Filter');
end 