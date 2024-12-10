function [ gray ] = rgbtogray( I )
[ w h l ] = size(I);

for i=1:w
    for j=1:h
        gray(i,j)= (I(i,j,1)*0.8+I(i,j,2)*0.1+I(i,j,3)*0.1) / 3;
    end
end
figure,imshow(gray);
end

