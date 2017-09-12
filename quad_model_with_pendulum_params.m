
vehicle_mass = 0.550;  % KILOGRAMS  includes battery
gravity = 9.80665;
vehicle_initial_height = -4 ; % -Z IS UP   % -num_links*link_length;
vehicle_velocity_ascent_limit = -4; % METERS / SECOND
vehicle_velocity_descent_limit = 4.0; % METERS / SECOND


% LINKS  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
has_links  = 1;
num_links = 16;
link_mass = 0.0075/2; 
link_length = 0.25;
pendulum_joint_damping = 0.00;  % NEWTONS
link_terminal_vel_water = 0.25;  % METERS / SECOND
pendulum_link_damping_xy = 0.00;


% DANGLING SENSOR - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
sensor_mass = 0.015; 
pendulum_sensor_damping_xy = 0.1;  % NEWTONS
sensor_sample_time = 0.1; % PERIOD
sensor_delay = 0.30; % SECONDS
has_sensor = 1;
num_props = 4;
sensor_spring_stiffness = 0.5;
sensor_spring_damping = 0.05;
sensor_drag_coef_rho_area = 23.536;

%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  

% POSITION CONTROLLER REFERENCE
% TARGETS
x_ref = 1;  % METERS
y_ref = 1;  % METERS
z_ref = 0.0;  % METERS
w_ref = 0;  % RADIANS


n = 1;

x_Kp = 0.085/n;  % RADIAN / METER
x_Kd = 0.14/n;  % RADIAN * SECONDS / METER

y_Kp = 0.085/n;  % RADIAN / METER
y_Kd = 0.14/n;  % RADIAN * SECONDS / METER

z_Kp = 0.8;  % NEWTON / METER
z_Kd = 1.05;  % NEWTON * SECONDS / METER




disturbance_z_gain = 0.2; % NEWTON
disturbance_y_delay = 0.5; % NEWTON
disturbance_xy_wind_gain = 0.00; % NEWTON   0.08 is a decent gust.


link_x_ang_offset = 5; % DEGREES




link_terminal_vel_gain = 0.2942;    %((link_mass * gravity) / (link_terminal_vel_water * link_terminal_vel_water))/2

link_force_limit = link_mass * gravity;

% NOT WORKING
air_water_brake_force_distance = 0.10; % METERS




%rotor_angular_velocity_at_hover = 525;  % rad/s .  based on ~5000 RPM for hummingbird at hover 
%rotor_velocity_range = 300;

%rotor_low_end = rotor_angular_velocity_at_hover - rotor_velocity_range;
%rotor_high_end = rotor_angular_velocity_at_hover + rotor_velocity_range;
%rotor_total_range = rotor_velocity_range*2;
%thrust_max = 20; % N

%C_tau = 1/(rotor_total_range * num_props / thrust_max);  % based on max thrust with rotor speed of 1000 RPM  (maps from 0 to 300, corresponding to rotor speeds of 700-1000)
%d = 0.17;   % METERS
%C_Q = 1/1000;    % reaction torque from rotor drag

%% MAX THRUST 20 N

%% MAX PAYLOAD 200g

%gamma = [ C_tau C_tau C_tau C_tau; 
          %0     -d*C_tau   0   d*C_tau;
          %d*C_tau   0   -d*C_tau 0;
          %-C_Q C_Q -C_Q C_Q];


%gamma_inverse = inv(gamma);  % PRE-COMPUTE THE INVERSE OF matrix linking rotor angular velocities to force-torque   F = gamma * w



