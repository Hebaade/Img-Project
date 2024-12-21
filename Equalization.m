function [I1] = Equalization(I)
    [w, h] = size(I);   
    I = double(I);
    % return the histogram values without plotting it
    G = histogram(I, false);
    
    % Compute cumulative distribution function (CDF)
    CDF = cumsum(G);
    total_pixels = w * h;
    NCDF = round((CDF - CDF(1)) / (total_pixels - CDF(1)) * 255);
    
    I1 = zeros(w, h);   
    for i = 1:w
        for j = 1:h
            val = I(i, j); 
            I1(i, j) = NCDF(val + 1); 
        end
    end    
    I1 = uint8(I1);     
  
 
   
end
           
       