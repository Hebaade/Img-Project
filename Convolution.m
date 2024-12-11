function y = customConvolution(x, h)
    % Custom 1D Convolution Function
    % x: Input signal (vector)
    % h: Impulse response (filter/kernel)
    % y: Convolution result (vector)
    
    % Ensure input is a row vector
    x = x(:).'; % Convert to row vector
    h = h(:).'; % Convert to row vector
    
    % Flip the filter for convolution
    h = flip(h);
    
    % Get lengths of input signal and filter
    Nx = length(x);
    Nh = length(h);
    
    % Compute the length of the output
    Ny = Nx + Nh - 1;
    
    % Zero-pad the input signal
    x_padded = [zeros(1, Nh-1), x, zeros(1, Nh-1)];
    
    % Initialize the output signal
    y = zeros(1, Ny);
    
    % Perform the convolution
    for n = 1:Ny
        y(n) = sum(x_padded(n:n+Nh-1) .* h);
    end
end
