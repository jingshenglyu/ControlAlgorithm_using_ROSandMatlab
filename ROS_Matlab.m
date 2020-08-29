% ROS_Matlab to run a turtlesim model
cmdpub = rospublisher('/turtle1/cmd_vel', rostype.geometry_msgs_Twist);
pause(3); % Wait to ensure publisher is setup
cmdmsg = rosmessage(cmdpub);
cmdmsg.Linear.X = 10;
cmdmsg.Angular.Z = 10;
send(cmdpub, cmdmsg);