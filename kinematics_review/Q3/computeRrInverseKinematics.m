function [rads1,rads2] = computeRrInverseKinematics(X,Y)

r_square = X.^2 + Y.^2;

cos_pi_mius_theta_2 = -(r_square - 2) / 2;

theta_2 = pi - acos(cos_pi_mius_theta_2);

theta_sum = atan2(Y, X);

theta_1 = theta_sum - theta_2 / 2;

rads1 = theta_1;
rads2 = theta_2;
