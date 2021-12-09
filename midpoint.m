%% this script implements the midpoint integration scheme 

function x = midpoint(f,tmin,dt, tmax, init_con)

t = tmin:dt:tmax;
x = zeros(length(t),3);

x(1,:)=init_con;
for i=2:length(t)
    k = x(i-1,:)' + dt * f(x(i-1,:))/2;
    x(i,:) = x(i-1,:)' + dt * f(k);
end
    

