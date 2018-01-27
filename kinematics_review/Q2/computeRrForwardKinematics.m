function [elbow,endeff] = computeRrForwardKinematics(rads1,rads2)
%%GIVEN THE ANGLES OF THE MOTORS, return an array of arrays for the
%%position of the elbow [x1,y1], and endeffector [x2,y2]

elbow_rot = [cos(rads1), -sin(rads1) 0; ...
             sin(rads1) cos(rads1) 0; ...
             0 0 1];

elbow_trans = [1 0 1; 0 1 0; 0 0 1];

elbow_frame = elbow_rot * elbow_trans;

eff_rot = [cos(rads2), -sin(rads2) 0; ...
             sin(rads2) cos(rads2) 0; ...
             0 0 1];
         
eff_trans = elbow_trans;

eff_frame = elbow_frame * eff_rot * eff_trans;

endeff = [eff_frame(1, 3), eff_frame(2, 3)];
elbow = [elbow_frame(1, 3), elbow_frame(2, 3)];

