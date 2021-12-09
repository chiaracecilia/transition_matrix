 % this function find the shadowing UPO for each point of the chaotic
% trajectory

% INPUT 
% x_chaotic: chaotic trajectory
% trajectories_UPOs: traj of the UPOs
% number_points_trajectories

% OUTPUT
% shadowing_UPO: index that identifies the shadowing UPO
% dist_shadowing_UPO: distance of the shadowing UPO with the chaotic trajectory
% coordinate_shadowing: coordinate of the shadowing UPO
% indice_shad_UPO: along the UPO that shadows the traj, index that realises
% the minimum 

function [shadowing_UPO,dist_shadowing_UPO,coordinate_shadowing,indice_shad_UPO] = shadowing_UPOs_full(x_chaotic, trajectories_UPOs, number_points_trajectories)

% initialise the variables
number_UPOs = length(trajectories_UPOs(1,1,:));

shadowing_UPO = zeros(length(x_chaotic),1);
dist_shadowing_UPO = zeros(length(x_chaotic),1);
coordinate_shadowing = zeros(length(x_chaotic),3);
indice_shad_UPO = zeros(length(x_chaotic),number_UPOs);


% now check all the other points j of the chaotic orbit. For this one
% implement a reduced version of the algorithm 

for j = 1:length(x_chaotic)
[shadowing_UPO(j), dist_shadowing_UPO(j), coordinate_shadowing(j,:), indice_shad_UPO(j,:)] = shad_UPO_full(x_chaotic(j,:), trajectories_UPOs, number_points_trajectories);
end


