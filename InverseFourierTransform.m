function [new_image] = InverseFourierTransform(fourier_image)
    f3 = ifftshift(fourier_image);
    f3 = ifft2(f3);
    fabs = abs(f3);
    flog = log(fabs);
    new_image = mat2gray(flog);
end