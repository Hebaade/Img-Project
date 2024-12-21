function bw = graytobinary(I,th)
    [w, h] = size(I);
    bw = zeros(w, h);

    for i = 1:w
        for j = 1:h
            if I(i, j) < th
                bw(i, j) = 0;
            else
                bw(i, j) = 1;
            end
        end
    end


end