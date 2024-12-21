function [img] = gammaCorrection(I, g)
[ w h l] = size(I);
I = im2double(I);
for i=1:w
    for j=1:h
        img(i,j) = (I(i,j)^g);
    end
end

end

    