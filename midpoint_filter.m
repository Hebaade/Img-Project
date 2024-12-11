function filtered_image = midpoint_filter(image, window_size)
    % Midpoint Filter
    % image: Input image (grayscale or RGB)
    % window_size: Size of the square neighborhood (e.g., 3 for 3x3)
    
    % Convert image to grayscale if it's RGB
    if size(image, 3) == 3
        image = rgb2gray(image);
    end
    image = double(image); % Convert to double for processing

    % Get the dimensions of the image
    [rows, cols] = size(image);
    
    % Pad the image to handle border pixels
    pad_size = floor(window_size / 2);
    padded_image = padarray(image, [pad_size, pad_size], 'replicate');
    
    % Initialize the filtered image
    filtered_image = zeros(rows, cols);

    % Apply the midpoint filter
    for i = 1:rows
        for j = 1:cols
            % Extract the neighborhood
            neighborhood = padded_image(i:i + window_size - 1, j:j + window_size - 1);
            
            % Compute the midpoint value
            max_val = max(neighborhood(:));
            min_val = min(neighborhood(:));
            midpoint_val = (max_val + min_val) / 2;
            
            % Assign the midpoint value to the filtered image
            filtered_image(i, j) = midpoint_val;
        end
    end
    
    % Convert the filtered image back to uint8 for display
    filtered_image = uint8(filtered_image);
end
