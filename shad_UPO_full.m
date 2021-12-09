% this function finds the shadowing UPO performing ALL the possible
% confronts

% INPUT 
% punto: point on the chaotic trajectory
% trajectories_UPOs: traj of all the UPOs
% number_points_trajectories: number of point on each UPO traj

% OUTPUT
% shadowing_UPO: index of the shadowing UPO
% dist_shadowing_UPO: distance of the shad UPO
% coordinate_shadowing: coordinate of the shadowing UPO 
% indice_shad: index of the shadowing UPO
% indice_shad_UPO: for each UPO it contains the index that realises the
% minimum with punto.



function [shadowing_UPO, dist_shadowing_UPO, coordinate_shadowing, indice_shad_UPO, indice_shad] = shad_UPO_full(punto, trajectories_UPOs, number_points_trajectories)

number_UPOs = length(trajectories_UPOs(1,1,:));
indice_shad_UPO = zeros(number_UPOs, 1);
dist = zeros(number_UPOs, 1);
coord = zeros(number_UPOs, 3);

for j=1:number_UPOs % j indicates the UPOs that I am considering
    % for each UPO, caculate all the distances with punto and select the
    % minimum  
    UPO_traj = traj_single_UPO(trajectories_UPOs, number_points_trajectories(j),j);
    [coord(j,:), dist(j), indice_shad_UPO(j)] = point_that_realises_minimum(UPO_traj, punto);
end

[dist_shadowing_UPO, shadowing_UPO]  = min(dist);
coordinate_shadowing = coord(shadowing_UPO,:);
indice_shad = indice_shad_UPO(shadowing_UPO);

end