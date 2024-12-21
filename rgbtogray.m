function gray = rgbtogray(I)
    % Custom function to convert RGB image to grayscale
    % I: Input image (can be RGB or grayscale)
    % gray: Output grayscale image
    
    % Check if the input image is RGB (3 channels)
    if size(I, 3) == 3
        % Combine the RGB channels into grayscale
        gray = (I(:, :, 1) * 0.3 + I(:, :, 2) * 0.59 + I(:, :, 3) * 0.11);
    elseif size(I, 3) == 1
        % Already grayscale, just return the input
        gray = I;
    else
        error('Input image must be either RGB (3 channels) or grayscale (1 channel).');
    end
  
end
