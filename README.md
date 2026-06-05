# Automated Video Motion Detection System

##  Project Overview
A real-time computer vision application built in MATLAB that utilizes hardware-integrated webcam feeds to capture, process, and analyze live environmental changes.

##  Key Features
- **Dynamic Frame-Differencing:** Programmed an algorithm that converts high-resolution snapshots to grayscale matrices and evaluates changes against a strict numerical threshold.
- **Memory Optimization:** Implemented user-controlled execution logic and matrix recycling to optimize runtime memory allocation and ensure long-term system stability.

##  File Structure
- `LeJeremy_Project.m` - The main driver script that initializes the webcam feed and runs the execution loop.
- `calculateMotion.m` - Processes frame matrices to detect environmental variance.
- `motionAlert.m` - Handles system triggers when movement crosses the numerical threshold.
- `checkReset.m` - Code logic for resetting baseline frames and recycling matrices.
