
#contant for horizontal_mode
# Set the control-mode to control pitch & roll angle of the vehicle.
# Need to be referenced to either the ground or body frame 
# by HorizontalCoordinate setting.
# Limit: 35 degree
uint8 HORIZONTAL_ANGLE = 0
# Set the control-mode to control horizontal vehicle velocities.
# Need to be referenced to either the ground or body frame by
# HorizontalCoordinate setting.
# Limit: 30 m/s
uint8 HORIZONTAL_VELOCITY = 1
# Set the control-mode to control position offsets of pitch & roll directions
# Need to be referenced to either the ground r body frame by HorizontalCoordinate setting.
# Limit: N/A
uint8 HORIZONTAL_POSITION = 2
# Set the control-mode to control rate of change of the vehicle's attitude
# Need to be referenced to either the ground or body frame by HorizontalCoordinate setting.
# Limit: 150.0 deg/s
uint8 HORIZONTAL_ANGULAR_RATE = 3

#contant for vertical_mode
# Set the control-mode to control the vertical
# speed of UAV, upward is positive
# Limit: -5 to 5 m/s
uint8 VERTICAL_VELOCITY = 0
# Set the control-mode to control the height of UAV
# Limit: 0 to 120 m
uint8 VERTICAL_POSITION = 1
# Set the control-mode to directly control the thrust
# Range: 0% to 100%
uint8 VERTICAL_THRUST = 2

#contant for yaw_mode
# Set the control-mode to control yaw angle.
# Yaw angle is referenced to the ground frame.
# In this control mode, Ground frame is enforeced in Autopilot.
uint8 YAW_ANGLE = 0
# Set the control-mode to control yaw angular velocity.
# Same reference frame as YAW_ANGLE.
# Limite: 150 deg/s
uint8 YAW_RATE = 1
#contant for horizontal_coordinate
# Set the x-y of ground frame as the horizontal frame (NEU) */
uint8 HORIZONTAL_GROUND = 0
# Set the x-y of body frame as the horizontal frame (FRU) */
uint8 HORIZONTAL_BODY = 1
#contant for stable_mode
# Disable the stable mode
uint8 STABLE_DISABLE = 0
# Enable the stable mode
uint8 STABLE_ENABLE = 1

# Only when the GPS signal is good (health_flag >=3)，horizontal
# position control (HORIZONTAL_POSITION) related control modes can be used.
# Only when GPS signal is good (health_flag >=3)，or when AdvancedSensing
# system is working properly with Autopilot，horizontal velocity control
# （HORIZONTAL_VELOCITY）related control modes can be used.
uint8 horizontal_mode

# We suggest developers do not use VERTICAL_POSITION control mode indoor
# when your UAV flight height is larger than 3 meters.
# This is because in indoor environments, barometer can be inaccurate, and
# the vertical controller may fail to keep the height of the UAV.
uint8 vertical_mode
uint8 yaw_mode
uint8 horizontal_coordinate

# Only works in Horizontal velocity control mode
# In velocity stable mode, drone will brake and hover at one position once
# the input command is zero.
# Drone will try to stay in position once in hover state.
# In velocity non-stable mode, drone will follow the velocity command and
# doesn’t hover when the command is zero.
# That’s to say drone will drift with the wind.
uint8 stable_mode
