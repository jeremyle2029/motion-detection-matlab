function motionAlert(nextFrame)
    % Visual alert text at the center of the frame
    [height, width, ~] = size(nextFrame);
    xPosition = width/2;
    yPosition = height/2;
    hold on;
    text(xPosition, yPosition, "MOTION DETECTED!!!", ...
        "Color", "red", "FontSize", 30, "FontWeight", "bold", ...
        "HorizontalAlignment", "center");
    hold off;
end