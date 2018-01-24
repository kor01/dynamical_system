mg = 9.8; l = 1; inertia = mg * l.^2;

% equation of theta and theta dot

friction = 0.1;

eq = @(t, theta) [theta(2); ...
    (-mg * l ./ inertia) * sin(theta(1)) - friction * theta(2)];

init_theta = [0.1 0];

t0 = 0; t1 = 30;

dim2_ode_sim(eq, init_theta, t0, t1);
