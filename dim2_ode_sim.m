function [sol] = dim2_ode_sim(func, init, t0, t1)
% simulate and visualize two dimensional ode 

figure('Name', '2 Dim ODE Simulation');

[t, sol] = ode45(func, [t0 t1], init);

steps = length(t);

min_x = min(sol(:, 1)); max_x = max(sol(:, 1));
delta_x = (max_x - min_x) * 0.2;
min_x = min_x - delta_x; max_x = max_x + delta_x;

min_y = min(sol(:, 2)); max_y = max(sol(:, 2));
delta_y = (max_y - min_y) * 0.1;
min_y = min_y - delta_y; max_y = max_y + delta_y;


plot_interval = 0.01;

for i = 1:steps
    
    subplot(3, 1, 1);
    plot(sol(i, 1), sol(i, 2), '.', ...
        'color',[rand; rand; rand],'markersize', ...
        14,'MarkerFaceColor','b'); 
    hold on
    title(['equation simulation t=' num2str(t(i))], 'fontsize', 12)
    xlabel('x', 'fontsize', 12);
    ylabel('y', 'fontsize', 12);
    
    if i == 1
        axis([min_x, max_x, min_y, max_y]);
    end
    
    subplot(3, 1, 2);
    
    text(0.1,0.5,'X-Time Series graph will be shown at the end', 'fontsize', 12)
    
    subplot(3, 1, 3);
    
    text(0.1,0.5,'Y-Time Series graph will be shown at the end', 'fontsize', 12)
    
    pause(plot_interval);
    
end

subplot(3, 1, 2);
plot(t(:,1),sol(:,1),'b.','markersize',10,'MarkerFaceColor','b');
title(['x time series time=' num2str(t1) ' seconds'], 'fontsize', 12)
xlabel('t')
ylabel('x')

subplot(3, 1, 3);
plot(t(:,1),sol(:,2),'b.','markersize',10,'MarkerFaceColor','b');
title(['y time series time=' num2str(t1) ' seconds'], 'fontsize', 12)
xlabel('t')
ylabel('y')


end

