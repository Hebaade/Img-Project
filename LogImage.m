function [img] = LogImage(I)
[ w , h ] = size(I);
I = im2double(I);
for i=1:w
    for j=1:h
        img(i,j) = log(1 + I(i,j));
    end
end
figure , imshow(img);
end

    