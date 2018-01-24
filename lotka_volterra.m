alpha = 1;
beta = 2.667;
gamma = 1;

t0 = 0; t1 = 100;
init = [1 1];

eq = @(t,x) [x(1)*(alpha - beta*x(2));...
    -x(2)*(gamma-delta*x(1))];

dim2_ode_sim(eq, init, t0, t1);
