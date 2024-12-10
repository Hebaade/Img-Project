function [bw] = graytobinary (I,threshold)
[ w h ] = size(I);
for i=1:w
    for j=1:h
        if(I(i,j) < threshold );
            bw(i,j) = 0;
        else if (I(i,j) >= threshold);
            bw(i,j) = 1;
            end
        end
    end
end
figure , imshow(bw)
end




