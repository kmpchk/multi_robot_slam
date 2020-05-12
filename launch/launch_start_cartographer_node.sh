#!/bin/sh

cartographer_core_execute="ROBOT_NAME=map roslaunch multi_robot_slam cartographer.launch"
eval $cartographer_core_execute &

for var in "$@"
do	
	cmd="ROBOT_NAME=$var roslaunch multi_robot_slam cartographer_robot_run.launch"
	eval $cmd &
done