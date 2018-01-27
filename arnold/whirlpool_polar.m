eq = @(t, rtheta) [rtheta(1) * (1 - rtheta(1).^2); -1];

t0 = 0; t1 = 30;

init_rtheta = [0.5, 1];

dim2_ode_sim(eq, init_rtheta, t0, t1);

