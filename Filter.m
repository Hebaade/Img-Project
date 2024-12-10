function [img] = Filter(mask , I)
    I = double(I);   
    
    [image_rows, image_cols] = size(I);
    [mask_rows, mask_cols] = size(mask);  %3*3 
    
    pad_rows = floor(mask_rows / 2);  %3/2 = 1
    pad_cols = floor(mask_cols / 2);  %3/2 = 1
    
    % Padding with zeros
    padded_image = padarray(I, [pad_rows, pad_cols], 0, 'both');
    
    img = zeros(image_rows, image_cols);
    
    %convolution 
    for i = 1:image_rows
        for j = 1:image_cols
            % image section under the mask
            window = padded_image(i:i + mask_rows - 1, j:j + mask_cols - 1);
            
            % Compute the dot product
            img(i, j) = sum(sum(window .* mask));
        end
    end
   
    % Scaling transformation to bring intensity within [0, 255]
%     min_val = min(img(:));  % Minimum value in the result
%     max_val = max(img(:));  % Maximum value in the result
%     img = 255 * (img - min_val) / (max_val - min_val);  
    
    img = uint8(img);
end
  
   
    
   
 
  
    


