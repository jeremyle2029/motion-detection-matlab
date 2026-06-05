function shouldRun = checkReset()
%Ask user for choice to reset the motion detector
    choice = input("\nWould you like to reset the motion detector (Yes/No)? ", "s");
    
    if strcmpi(choice, "yes")
        shouldRun = true;
    else
        shouldRun = false;
    end
end