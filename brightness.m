function [ img ] = brightness(I , op ,num)
[w h] = size(I);
for i=1:w
    for j=1:h
        if (op == '+');
            pixel = I(i,j)+ num;
        else if (op == '-');
                pixel = I(i,j)- num;
        else if (op == '*');
                pixel = I(i,j)* num;
        else if (op == '/');
                pixel = I(i,j)/ num; 
            end
            end
            end
        end
        if (pixel>255);
            img(i,j) = 255;
        else if (pixel < 0)
                img(i,j) = 0;
            else 
                img(i,j) = pixel;
            end
        end
    end
end

figure , imshow(img);
end
