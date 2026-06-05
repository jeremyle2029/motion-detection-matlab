function ifMotion = calculateMotion(img1, img2)
    %Calculates the difference between the 2 frames
    diffFrame = abs(double(img1) - double(img2));
    ifMotion = mean(diffFrame(:));
end