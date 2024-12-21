function [img] = rightDiagEdge (I)
    mask = [1 1 0; 1 0 -1; 0 -1 -1];
    img = Filter(mask, I);
     
end