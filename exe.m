%% script that calculates the transition matrix given a set of states of the system

% INPUT
% dt (1,1): time step
% T_chaotic  (1,1): length of the chaotic trajectory used for the
% shadowing needed to calculate the statistics

% OUTPUT
% TRANSITION (number_UPO, number_UPO): transition matrix
% x_chaotic(3, T_chaotic/dt): chaotic trajectory considered for the
% shadowing
% shadowing_UPO (1,length(x_chaotic)): index that identifies the shadowing UPO at each timestep
% dist_shadowing_UPO (1,length(x_chaotic)): distance of the shadowing UPO with the chaotic trajectory
% coordinate_shadowing (3,length(x_chaotic)): coordinate of the shadowing UPO
% indice_shad_UPO (1,length(x_chaotic)): along the UPO that shadows the traj, index that realises
% the minimum. save it for each time step, for each UPO

% load data
load('upo_data.mat')
load('trajectories.mat')
load('shadowing_parameters.mat')



%% parameters

T_chaotic = 0.05;
dt = 0.01;

%%

[x_chaotic, shadowing_UPO,dist_shadowing_UPO,coordinate_shadowing,indice_shad_UPO, TRANSITION] = transition_matrix_give_UPOs(T,dt, f, T_chaotic, K, tau, trajectories_UPOs, number_points_trajectories);

save('transition.mat')

