function filtered_image = ideal_hpf(image, cutoff)
    % Ideal High-Pass Filter
    % image: Input image (grayscale or RGB)
    % cutoff: Cutoff frequency (D0)
    
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

    % Ideal HPF formula: H = 1 - Ideal_LPF
    H = D > cutoff;

    % Fourier Transform of the image
    F = fftshift(fft2(image));

    % Apply the filter
    G = H .* F;

    % Inverse Fourier Transform to get the filtered image
    filtered_image = real(ifft2(ifftshift(G)));
    filtered_image = uint8(filtered_image);
end
