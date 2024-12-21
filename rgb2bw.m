function [bw] = rgb2bw (I , threshold)
[ w h l] = size(I);
for i=1:w
    for j=1:h
        gray = (I(i,j,1));
        if (gray < threshold);
            bw(i,j) = 0;
        else if (gray >= threshold);
                bw(i,j) = 1;
            end
        end
    end
end
