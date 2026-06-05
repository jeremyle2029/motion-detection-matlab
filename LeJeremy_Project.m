% Motion Detector
% housekeeping
clc
clear
close all
% Initializes the camera and loop variables
cam = webcam;
run = true;
delay = .05;
threshold = 10;
%loop to determine whether there is motion
while run
    %captures frame one as gray
    frameOne = snapshot(cam);
    frameOneGray = rgb2gray(frameOne);
    %initlizes variable for motion detection loop
    motion = false;
    %frame counter
    frames = 0;
    %motion detection loop
    while ~motion
        frames = frames + 1;
        %captures next frame as gray
        frameTwo = snapshot(cam);
        frameTwoGray = rgb2gray(frameTwo);
        %Calls fuction that calculations if there is motion
        ifMotion = calculateMotion(frameOneGray,frameTwoGray);
        imshow(frameTwo);
        %if there is motion, displays alert
        if ifMotion > threshold
            motion = true;
            motionAlert(frameTwo)
        end
        %makes frame 1 frame 2 and so on so that the while loop continues
        %to run
        frameOneGray = frameTwoGray;
        pause(delay);
    end
    % Prints frames before detection and the threshold
    fprintf("%d frames were captued before motion as detected",frames)
    fprintf("\nThe threshold was %d",threshold)
    % Calls checkReset fuction to check if the user wants to reset
    run = checkReset();
end
