function [img] = leftDiagEdge (I)
    mask = [0  1  2; -1  0  1; -2 -1  0];
    img = Filter(mask, I);
     figure, imshow(img) , title('Left diagonal Edge detection');
end