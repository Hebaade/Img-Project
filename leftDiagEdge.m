function [img] = leftDiagEdge (I)
    mask = [0  1  2; -1  0  1; -2 -1  0];
    img = Filter(mask, I);

end