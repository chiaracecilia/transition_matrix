% this function creates the chaotic trajectory for which I will calculate
% the shadowing


function x_chaotic = create_chaotic_trajectory(dt, f, T_chaotic)
x = midpoint(f,0,dt, 100, rand(1,3)); % find an initial condition in the attractor of the system
x_chaotic = midpoint(f,0,dt, T_chaotic, x(end,:)); 
end