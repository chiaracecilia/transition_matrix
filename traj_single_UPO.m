% creates a vector containing all the points of the UPO that we are taking
% into account 

function UPO_traj = traj_single_UPO(trajectories_UPOs, number_point_traj,index_UPO)
        
% save in separate matrix the coordinates of the UPOs
x_coord = trajectories_UPOs(1:number_point_traj,1,index_UPO); % x_coord(points_trajectory, #UPO)
x_coord = reshape(x_coord,number_point_traj,1);
y_coord = trajectories_UPOs(1:number_point_traj,2,index_UPO); % x_coord(points_trajectory, #UPO)
y_coord = reshape(y_coord,number_point_traj,1);
z_coord = trajectories_UPOs(1:number_point_traj,3,index_UPO); % x_coord(points_trajectory, #UPO)
z_coord = reshape(z_coord,number_point_traj,1);

UPO_traj = [x_coord, y_coord,z_coord];