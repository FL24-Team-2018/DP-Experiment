%% main
% script to apply the blind-deconvolution algorithm 'deconvblind' of MATLAB on interference patterns of double pinholes taken at FLASH2 in November 2017

%%
clear all;
close all;

%% remarks:

% # global degree of coherence

% from Bagschick+2016 (oe-24-20-23162) eq.5:
% zeta = (xi / sigma_B) * ( 4 + (xi / sigma_B)^2 )^(-1/2)

dataset = generate_dataset();

%% choosing the measurement

dataset_idx = 9;
measurement_idx = 5;
dataset_name = dataset(dataset_idx).name
wavelength_nm = dataset(dataset_idx).wavelength_nm;
%print(strcat('dataset: ',dataset(dataset_idx).name));
%print(strcat('d_um: ',num2str(dataset(dataset_idx).measurement(measurement_idx).d_um)));
pixis_centerx_px = dataset(dataset_idx).measurement(measurement_idx).pixis_centerx_px;
pixis_centery_px = dataset(dataset_idx).measurement(measurement_idx).pixis_centery_px;
datafile = dataset(dataset_idx).measurement(measurement_idx).datafile;
sigma_B_um = dataset(dataset_idx).sigma_B_um;
d_um = dataset(dataset_idx).measurement(measurement_idx).d_um;
sigma_est_um = dataset(dataset_idx).measurement(measurement_idx).sigma_est_um;
sigma_est_min_um = dataset(dataset_idx).measurement(measurement_idx).sigma_est_min_um;
%sigma_est_min_um = 8;
sigma_est_max_um = dataset(dataset_idx).measurement(measurement_idx).sigma_est_max_um;
%sigma_est_max_um = 65;
sigma_est_um_array = [sigma_est_min_um:1:sigma_est_max_um];

close all
[I_pixis,pixis_image_norm,n,idx_row,idx_col,gamma_rec,F_gamma_rec,I_pc_rec,I_rec,sigma_F_gamma_rec_hor_um,I_rec_profile,I_rec_profile_min,sigma_B_um,zeta,D,pixis_image_norm_hist,corr_I_pixis_I_pc_rec,abs_gamma,xi_um_hor,xi_um_ver,X1_axis,Y1_axis,X2_axis,Y2_axis,R_1,iter,pinholes_image_norm,sigma_est_um_opt]= run_deconvolution(dataset_name,d_um,datafile,pixis_centerx_px,pixis_centery_px,wavelength_nm,sigma_B_um,sigma_est_min_um,sigma_est_max_um,sigma_est_um,sigma_est_um_array);
%%
%sigma_B_um = 25;
generate_plots(dataset_name,wavelength_nm,d_um,sigma_est_um,sigma_est_um_array,I_pixis,pixis_image_norm,n,idx_row,idx_col,gamma_rec,F_gamma_rec,I_pc_rec,I_rec,sigma_F_gamma_rec_hor_um,I_rec_profile,I_rec_profile_min,sigma_B_um,zeta,D,pixis_image_norm_hist,corr_I_pixis_I_pc_rec,abs_gamma,xi_um_hor,xi_um_ver,X1_axis,Y1_axis,X2_axis,Y2_axis,R_1,iter,pinholes_image_norm)