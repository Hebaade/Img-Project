function [I1] = histogram(I, plotFlag)
% Check if the plotFlag parameter is provided; if not, default to true
    if nargin < 2
        plotFlag = true;
    end   
    [w, h] = size(I);
    I1 = zeros(256,1);% Initialize histogram array
    
    % Calculate histogram values
    for i = 1:w
        for j = 1:h
            index = I(i, j);
            I1(index + 1) = I1(index + 1) + 1;
        end
    end
    % Plot the histogram if the flag is true
    if plotFlag == true;
   
    end
end




    
   
    