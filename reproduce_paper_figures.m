% This script reproduces the experiment results shown in the paper "Non-rigid Puzzles"
% The required functions are availiable at https://github.com/orlitany/NonRigidPuzzles
% The only non self-contained dependency is the manopt toolbox. It should be downloaded from: http://www.manopt.org/
% After you download manopt, make sure to change the path to where you saved it. 
% To run an experiment, simply uncomment the relevant subsection. 
% Results will be saved automatically under a new folder. 
% If you encounter problems, feel free to contact us at: orlitany <at> post <dot> tau <dot> ac <dot> il

clear all;close all;
%% dependencies
addpath(genpath('./'));
addpath(genpath('./../../../manopt/')) %Replace the the correct path to manopt folder

%% Figure 1
% load('./Data\Figure1_data.mat')
% main_params.output_folder = ['./Results\Figure1\' datestr(now, 'ddmmHHMM') '\']; 

%% Figure 6 (dog parts)
% load('./Data\Figure6_data.mat')
% main_params.output_folder = ['./Results\Figure6\' datestr(now, 'ddmmHHMM') '\']; 

%% Figure 7 (real scan)
load('./Data\Figure7_data.mat')
main_params.output_folder = ['./Results\Figure7\' datestr(now, 'ddmmHHMM') '\']; 

%% Figure 8 
% load('./Data\Figure8_data.mat')
% main_params.output_folder = ['./Results\Figure8\' datestr(now, 'ddmmHHMM') '\']; 

%% Figure 9 (overlapping parts)
% load('./Data\Figure9_data.mat')
% main_params.output_folder = ['./Results\Figure9\' datestr(now, 'ddmmHHMM') '\']; 

%% Figure 10 (wolf with extra part)
% load('./Data\Figure10_data.mat')
% main_params.output_folder = ['./Results\Figure10\' datestr(now, 'ddmmHHMM') '\']; 

%% run 
mkdir(main_params.output_folder);
[C,u,v] = solveNonRigidPuzzle(model,parts,corr_functions,main_params,algo_params);