function filtered_image = butterworth_lpf(image, cutoff, order)
    % Butterworth Low-Pass Filter
    % image: Input image (grayscale or RGB)
    % cutoff: Cutoff frequency (D0)
    % order: Filter order (n)
    
    % Convert image to grayscale if it's RGB
    if size(image, 3) == 3
        image = rgb2gray(image);
    end
    image = double(image); % Convert to double for processing

    % Get image dimensions
    [rows, cols] = size(image);
    [u, v] = meshgrid(1:cols, 1:rows);

    % Shift origin to the center of the frequency domain
    u = u - ceil(cols / 2);
    v = v - ceil(rows / 2);

    % Distance from the center (frequency radius)
    D = sqrt(u.^2 + v.^2);

    % Butterworth filter formula
    H = 1 ./ (1 + (D ./ cutoff).^(2 * order));

    % Fourier Transform of the image
    F = fftshift(fft2(image));

    % Apply the filter
    G = H .* F;

    % Inverse Fourier Transform to get the filtered image
    filtered_image = real(ifft2(ifftshift(G)));
    filtered_image = uint8(filtered_image);
end
