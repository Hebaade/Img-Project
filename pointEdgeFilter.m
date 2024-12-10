function [img] = pointEdgeFilter (I)
    mask = [-1 -1 -1, -1 8 -1, -1 -1 -1];
    img = Filter(mask, I);
    figure, imshow(img), title('point Edge detection');
end