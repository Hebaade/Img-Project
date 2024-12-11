function [img] = brightness(I, op, num)
    % Ensure input image is double for calculations
    I = double(I);  
    [w, h] = size(I);
    img = zeros(w, h); % Initialize img with the same size as I
    
    for i = 1:w
        for j = 1:h
            % Apply the operation
            if op == '+'
                pixel = I(i, j) + num;
            elseif op == '-'
                pixel = I(i, j) - num;
            elseif op == '*'
                pixel = I(i, j) * num;
            elseif op == '/'
                if num == 0
                    error('Division by zero is not allowed.');
                end
                pixel = I(i, j) / num;
            else
                error('Invalid operation. Use +, -, *, or /.');
            end
            
            % Clamp pixel values to the valid range [0, 255]
            if pixel > 255
                img(i, j) = 255;
            elseif pixel < 0
                img(i, j) = 0;
            else
                img(i, j) = pixel;
            end
        end
    end
    
    % Convert the output image back to the original datatype
    img = cast(img, class(I));
    figure, imshow(img); % Display the processed image
end
