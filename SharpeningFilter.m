function [img] = SharpeningFilter (I)
    mask = [0 -1 0; -1 5 -1 ; 0 -1 0];
    img = Filter(mask, I);
    figure, imshow(img), title('Vertical Sharpening Filter');
end 