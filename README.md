# Multi-Robot SLAM
Launch files for conducting the most applicable and famous Single-Robot SLAM (e.g GMapping, HectorSLAM, etc.) among several UGVs (e.g Husky, Avrora Unior, etc.) with a map merge function support.

# Thanks
- shehancaldera (https://github.com/shehancaldera/multihusky_simulator)
- HITROS (https://github.com/HITROS/omtb)

# Setup
## Requirements
- multirobot_map_merge
- gmapping
- hectorSLAM
- multi-husky package (optional, needed below for example only) [https://github.com/shehancaldera/multihusky_simulator]
## Build
### Install dependencies
```
sudo apt-get install ros-kinetic-slam-gmapping ros-kinetic-gmapping ros-kinetic-hector-*
```
### Compile package
```
catkin_make --pkg multi_robot_slam
```
## Execution
First, run the simulation with several robot (for example, i am using a simulation provided by multihusky_simulator package):
```
roslaunch multihusky_simulator multihusky_random_world.launch
```
Second, launch a SLAM node to each robot and a map merge node:
```
roslaunch multi_robot_slam map_merge_hector.launch robot1_name:=robot1 robot2_name:=robot2
```
`robot1` and `robot2` are dynamic values and should be set individually
