 ____  _____    _    ____  __  __ _____
|  _ \| ____|  / \  |  _ \|  \/  | ____|
| |_) |  _|   / _ \ | | | | |\/| |  _|
|  _ <| |___ / ___ \| |_| | |  | | |___
|_| \_\_____/_/   \_\____/|_|  |_|_____|
     ___  _   _   _    ____    ____ ___ __  __ _   _ _        _  _____ ___  ____
    / _ \| | | | / \  |  _ \  / ___|_ _|  \/  | | | | |      / \|_   _/ _ \|  _ \
   | | | | | | |/ _ \ | | | | \___ \| || |\/| | | | | |     / _ \ | || | | | |_) |
   | |_| | |_| / ___ \| |_| |  ___) | || |  | | |_| | |___ / ___ \| || |_| |  _ <
    \__\_\\___/_/   \_\____/  |____/___|_|  |_|\___/|_____/_/   \_\_| \___/|_| \_\

NIMBUS LAB
2017 - jore@cse.unl.edu

The purpose of this document is to explain a simulink quadrotor simulator with pendulum.

FILES:
quad_model_with_pendulum.slx    						THE MAIN SIMULINK FILE
quad_model_with_pendulum_params.m     PARAMETERS USED BY SIMULINK, INCLUDES TARGET POSITION FOR THE POSITION CONTOLLERS, MASS OF THE UAV
experimental_link_model_x_minus.slx   PENDULUM LINK FILE WITH SMALL "MINUS ANGLE" OFFSET, SO THAT PENDULUM LINKS ARE NOT STRAIGHT DOWN
experimental_link_model_x_plus.slx 
README.txt   																									THIS FILE
Top Level Hummingbird Part.STL      		3D MODEL OF AN ASCTEC HUMMINGBIRD (JIM HIGGINS)
quaternion.m   																						 HELPER FILE FOR QUATERNIONS  (MARK TINCKNELL)


To run the simulation, use MatLab Simulink 2016 and load the params files.  You'll need to change your MatLab working directory to this directory.
After loading the param file, open the 'quad_model_with_pendulum.slx' file.

Click the green play button in Simulink to run the physical model simulation.

See the params file for descriptions of the individual configuration parameters.



