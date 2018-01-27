function [endeff] = computeMiniForwardKinematics(rads1,rads2)

diff_angle = rads1 - rads2;

half_angle = pi - diff_angle / 2;

alpha = half_angle + rads1;

ca = cos(half_angle);

r = (2 * ca + sqrt(4 * ca.^2 + 12)) / 2;

endeff = [r * cos(alpha), r * sin(alpha)];
