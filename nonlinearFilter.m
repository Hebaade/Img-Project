function [img] = nonlinearFilter(I, filter_name, mask_size)
    I = double(I);
    [rows, cols] = size(I);
    
    % Padding size
    pad_size = floor(mask_size / 2);
    padded_image = padarray(I, [pad_size, pad_size], 'symmetric');
    
    img = zeros(rows, cols);  
   
    for i = 1:rows
        for j = 1:cols
            % Window
            window = padded_image(i:i + mask_size - 1, j:j + mask_size - 1);
            % Apply the filter
            switch filter_name
                case 'min'
                    img(i, j) = min(window(:));
                case 'max'
                    img(i, j) = max(window(:));
                case 'mean'
                    img(i, j) = mean(window(:));
                case 'median'
                    img(i, j) = median(window(:));
                case 'midpoint'
                    img(i, j) = (min(window(:)) + max(window(:))) / 2;                
            end
        end
    end
    img = uint8(img);
  
end
