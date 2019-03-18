%function dataset = generate_dataset()

%% paths of processed files from jupyter script, pinhole separations, etc ...

% path to where the folders with the *.mat files are stored, containing
% averages of the XUV PIXIS images and optical cameras of the fluorecent
% screen around the double pinholes:
%datapath = 'C:/Users/Thomas/OneDrive/PhD/coherence/data/11004861/processed/';  
datapath = '/asap3/flash/gpfs/fl24/2017/data/11004861/processed/'; % approx. 1GB
% some folders have very long filenames (might be a problem under windows)

% naming conventions:
% vertically: a,b / horizontally: c,d
% suffix: '_L' : larger beam of around 2mm FWHM
% suffix: '_S' : smaller beam of around 1mm FWHM

% un-comment the lines that load the pinhole-pair you want to process

% pixis_centerx_px and pixis_centery_px are the coordinates of the peak of
% the interference pattern

% Sigma_um_min and Sigma_um_max define the range where a loop should
% be done if run_sigma_scan = true. (To find the Sigma_um where the deconvolved pattern 'touches' the zero.
% Else, the value Sigma_um will be used to only plot one value


run_sigma_scan = true;
%run_sigma_scan = false;


%%% 2017-11-24T2020 13.5nm 68uJ 7Und. KOAS=1.5mm
% vertically:
%wavelength_nm = 13.5; pixis_centerx_px = 529; pixis_centery_px = 483; Sigma_um = 35; d_um = 322; load(strcat(datapath,'2017-11-24T2020 13.5nm 68uJ 7Und. KOAS=1.5mm 0322um (4a) ap5=7.0 ap7=50.0 2017-11-24T1309 13.5nm 68uJ 7Und. KOAS=PMMA (bg4ab)/FLASH2_USER1-2017-11-24T2020.h5_ph_4a_d_322.0_E_047.23_average.mat')); 
%wavelength_nm = 13.5; pixis_centerx_px = 500; pixis_centery_px = 480; Sigma_um = 45; d_um = 707; load(strcat(datapath,'2017-11-24T2020 13.5nm 68uJ 7Und. KOAS=1.5mm 0707um (1b) ap5=7.0 ap7=50.0 2017-11-24T1309 13.5nm 68uJ 7Und. KOAS=PMMA (bg1ab)/FLASH2_USER1-2017-11-24T2020.h5_ph_1b_d_707.0_E_046.69_average.mat'));
%wavelength_nm = 13.5; pixis_centerx_px = 595; pixis_centery_px = 520; Sigma_um = 70; d_um = 890; load(strcat(datapath,'2017-11-24T2020 13.5nm 68uJ 7Und. KOAS=1.5mm 0890um (2b#2) ap5=7.0 ap7=50.0 (bg2bc)/FLASH2_USER1-2017-11-24T2020.h5_ph_2b#2_d_890.0_E_047.10_average.mat'));
% horizontally:
%wavelength_nm = 13.5; pixis_centerx_px = 455; pixis_centery_px = 555; Sigma_um = 30; d_um = 322; load(strcat(datapath,'2017-11-24T2020 13.5nm 68uJ 7Und. KOAS=1.5mm 0322um (4c) ap5=7.0 ap7=50.0 2017-11-24T1309 13.5nm 68uJ 7Und. KOAS=PMMA (bg4ab)/FLASH2_USER1-2017-11-24T2020.h5_ph_4c_d_322.0_E_041.61_average.mat'));


%%% 2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm
% vertically:
% negative values ... wavelength_nm = 18.0; pixis_centerx_px = 550; pixis_centery_px = 505; Sigma_um = 20; d_um = 107; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 0107um (2a) ap5=7.0 ap7=50.0 (bg2ab)/FLASH2_USER1-2017-11-25T0141.h5_ph_2a_d_107.0_E_055.48_average.mat'));
% negative values ... wavelength_nm = 18.0; pixis_centerx_px = 567; pixis_centery_px = 445; Sigma_um = 12; d_um = 215; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 0215um (3a#1) ap5=7.0 ap7=50.0 (bg3ab#1)/FLASH2_USER1-2017-11-25T0141.h5_ph_3a#1_d_215.0_E_059.72_average.mat'));
%wavelength_nm = 18.0; pixis_centerx_px = 552; pixis_centery_px = 502; Sigma_um = 30; d_um = 322; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 0322um (4a) ap5=7.0 ap7=50.0 (bg4cd)/FLASH2_USER1-2017-11-25T0141.h5_ph_4a_d_322.0_E_054.27_average.mat'));
%wavelength_nm = 18.0; ???pixis_centerx_px = 500; pixis_centery_px = 550; Sigma_um = 35; d_um = 707; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 0707um (1b) ap5=7.0 ap7=50.0 (bg1ab)/FLASH2_USER1-2017-11-25T0141.h5_ph_1b_d_707.0_E_058.65_average.mat'));
%wavelength_nm = 18.0; pixis_centerx_px = 530; pixis_centery_px = 550; Sigma_um = 39; d_um = 890; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 0890um (2b) ap5=7.0 ap7=50.0 (bg2ab)/FLASH2_USER1-2017-11-25T0141.h5_ph_2b_d_890.0_E_062.71_average.mat'));
%wavelength_nm = 18.0; pixis_centerx_px = 600; pixis_centery_px = 460; Sigma_um = 39; d_um = 1047; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 1047um (3b#1) ap5=7.0 ap7=50.0 (bg3ab#1)/FLASH2_USER1-2017-11-25T0141.h5_ph_3b#1_d_1047.0_E_052.28_average.mat'));
%wavelength_nm = 18.0; pixis_centerx_px = 600; pixis_centery_px = 460; Sigma_um = 39; d_um = 1047; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 1047um (3b#1) ap5=7.0 ap7=50.0 (bg3ab#2)/FLASH2_USER1-2017-11-25T0141.h5_ph_3b#1_d_1047.0_E_052.28_average.mat'));
%wavelength_nm = 18.0; pixis_centerx_px = 600; pixis_centery_px = 460; Sigma_um = 39; d_um = 1047; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 1047um (3b#2) ap5=7.0 ap7=50.0 (bg3ab#1)/FLASH2_USER1-2017-11-25T0141.h5_ph_3b#2_d_1047.0_E_055.74_average.mat'));
%wavelength_nm = 18.0; pixis_centerx_px = 600; pixis_centery_px = 460; Sigma_um = 39; d_um = 1047; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 1047um (3b#2) ap5=7.0 ap7=50.0 (bg3ab#2)/FLASH2_USER1-2017-11-25T0141.h5_ph_3b#2_d_1047.0_E_055.74_average.mat'));
%wavelength_nm = 18.0; pixis_centerx_px = 500; pixis_centery_px = 510; Sigma_um = 48; d_um = 1335; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 1335um (4b) ap5=7.0 ap7=50.0 (bg4cd)/FLASH2_USER1-2017-11-25T0141.h5_ph_4b_d_1335.0_E_068.35_average.mat'));
% horizontally:
%wavelength_nm = 18.0; pixis_centerx_px = 526; pixis_centery_px = 559; Sigma_um = 20; d_um = 107; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 0107um (2c) ap5=7.0 ap7=50.0 (bg2ab)/FLASH2_USER1-2017-11-25T0141.h5_ph_2c_d_107.0_E_048.18_average.mat'));
%wavelength_nm = 18.0; pixis_centerx_px = 463; pixis_centery_px = 570; Sigma_um = 30; d_um = 322; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 0322um (4c) ap5=7.0 ap7=50.0 (bg4cd)/FLASH2_USER1-2017-11-25T0141.h5_ph_4c_d_322.0_E_055.30_average.mat'));
%%% negative values wavelength_nm = 18.0; pixis_centerx_px = 500; pixis_centery_px = 550; Sigma_um = 30; d_um = 707; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 0707um (1d) ap5=7.0 ap7=50.0 (bg1ab)/FLASH2_USER1-2017-11-25T0141.h5_ph_1d_d_707.0_E_053.83_average.mat'));
%wavelength_nm = 18.0; pixis_centerx_px = 530; pixis_centery_px = 570; Sigma_um = 35; d_um = 890; load(strcat(datapath,'2017-11-25T0141 18.0nm 46uJ 7Und. KOAS=1.5mm 0890um (2d) ap5=7.0 ap7=50.0 (bg2ab)/FLASH2_USER1-2017-11-25T0141.h5_ph_2d_d_890.0_E_052.28_average.mat'));


%%% 2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA
% vertically: FWHM approx 3mm
dataset(1).name = '26T2300_18nm_ver_L';
dataset(1).sigma_B_um = 704.25; % before measurements
%dataset(1).sigma_B_um = 644.75; % after measurements
dataset(1).wavelength_nm = 18;
dataset(1).measurement(1).d_um = 107;
dataset(1).measurement(1).pixis_centerx_px = 444;
dataset(1).measurement(1).pixis_centery_px = 552;
dataset(1).measurement(1).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 0107um (2a) ap5=7.0 ap7=50.0 (bg2ab) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_2a_d_107.0_E_048.17_average.mat');
dataset(1).measurement(1).sigma_est_um = 39;
dataset(1).measurement(1).sigma_est_min_um = 35;
dataset(1).measurement(1).sigma_est_max_um = 42;
dataset(1).measurement(2).d_um = 215;
dataset(1).measurement(2).pixis_centerx_px = 424;
dataset(1).measurement(2).pixis_centery_px = 499;
dataset(1).measurement(2).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 0215um (3a) ap5=7.0 ap7=50.0 (bg3a#1) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_3a_d_215.0_E_047.84_average.mat');
dataset(1).measurement(2).sigma_est_um = 25;
dataset(1).measurement(2).sigma_est_min_um = 10;
dataset(1).measurement(2).sigma_est_max_um = 35;
dataset(1).measurement(3).d_um = 322;
dataset(1).measurement(3).pixis_centerx_px = 398;
dataset(1).measurement(3).pixis_centery_px = 496;
dataset(1).measurement(3).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 0322um (4a) ap5=7.0 ap7=50.0 (bg4cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_4a_d_322.0_E_047.82_average.mat');
dataset(1).measurement(3).sigma_est_um = 23;
dataset(1).measurement(3).sigma_est_min_um = 18;
dataset(1).measurement(3).sigma_est_max_um = 35;
dataset(1).measurement(4).d_um = 707;
dataset(1).measurement(4).pixis_centerx_px = 448;
dataset(1).measurement(4).pixis_centery_px = 489;
dataset(1).measurement(4).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 0707um (1b) ap5=7.0 ap7=50.0 (bg1ab) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_1b_d_707.0_E_047.97_average.mat');
dataset(1).measurement(4).sigma_est_um = 34;
dataset(1).measurement(4).sigma_est_min_um = 22;
dataset(1).measurement(4).sigma_est_max_um = 35;
dataset(1).measurement(5).d_um = 890;
dataset(1).measurement(5).pixis_centerx_px = 425;
dataset(1).measurement(5).pixis_centery_px = 556;
dataset(1).measurement(5).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 0890um (2b) ap5=7.0 ap7=50.0 (bg2ab) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_2b_d_890.0_E_048.17_average.mat');
dataset(1).measurement(5).sigma_est_um = 28;
dataset(1).measurement(5).sigma_est_min_um = 18;
dataset(1).measurement(5).sigma_est_max_um = 35;
dataset(1).measurement(6).d_um = 1047; % no pinhole image?
dataset(1).measurement(6).pixis_centerx_px = 355;
dataset(1).measurement(6).pixis_centery_px = 500;
dataset(1).measurement(6).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 1047um (3b) ap5=7.0 ap7=50.0 (bg3ab#2) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_3b_d_1047.0_E_047.92_average.mat');
dataset(1).measurement(6).sigma_est_um = 23;
dataset(1).measurement(6).sigma_est_min_um = 20;
dataset(1).measurement(6).sigma_est_max_um = 35;
dataset(1).measurement(7).d_um = 1335; % bad background?
dataset(1).measurement(7).pixis_centerx_px = 493;
dataset(1).measurement(7).pixis_centery_px = 500;
dataset(1).measurement(7).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 1335um (4b) ap5=7.0 ap7=50.0 (bg4cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_4b_d_1335.0_E_047.91_average.mat');
dataset(1).measurement(7).sigma_est_um = 21;
dataset(1).measurement(7).sigma_est_min_um = 20;
dataset(1).measurement(7).sigma_est_max_um = 35;

d_um_26T2300_18nm_ver_L = [ 107, 215, 322, 707, 890, 1047, 1335 ];
sigma_B_um_26T2300_18nm_ver_L = dataset(1).sigma_B_um;
%d_FWHM_26T2300_18nm_ver_L = d_um_26T2300_18nm_ver_L / FWHM_um_26T2300_18nm_ver_L;
d_sigma_B_26T2300_18nm_ver_L = d_um_26T2300_18nm_ver_L / sigma_B_um_26T2300_18nm_ver_L;
%xi_um_26T2300_18nm_ver_L = [ 455.3644, 680.2117, 780.5904, 794.6978, 779.6730, 1.0671e+03, 802.8734 ];
xi_um_26T2300_18nm_ver_L = [ 455.3644, 680.2117, 780.5904, 732, 779.6730, 1.0671e+03, 802.8734 ];
%[dataset_results.measurement.xi_um_hor]
for i=1:length(xi_um_26T2300_18nm_ver_L)
    zeta_26T2300_18nm_ver_L(i) = globalcoherence(xi_um_26T2300_18nm_ver_L(i), sigma_B_um_26T2300_18nm_ver_L);
end
zeta_26T2300_18nm_ver_L_mean = nanmean(zeta_26T2300_18nm_ver_L);
zeta_26T2300_18nm_ver_L_std = nanstd(zeta_26T2300_18nm_ver_L);

% horizontally:  FWHM approx 2mm
dataset(2).name = '26T2300_18nm_hor_L';
dataset(2).sigma_B_um = 863; % before measurements
%dataset(2).sigma_B_um = 817; % after measurements
dataset(2).wavelength_nm = 18;

dataset(2).measurement(1).d_um = 107;
dataset(2).measurement(1).pixis_centerx_px = 450;
dataset(2).measurement(1).pixis_centery_px = 437;
dataset(2).measurement(1).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 0107um (2c) ap5=7.0 ap7=50.0 (bg2ab) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_2c_d_107.0_E_048.16_average.mat');
dataset(2).measurement(1).sigma_est_um = 58;
dataset(2).measurement(1).sigma_est_min_um = 55;
dataset(2).measurement(1).sigma_est_max_um = 65;
dataset(2).measurement(2).d_um = 215;
dataset(2).measurement(2).pixis_centerx_px = 441;
dataset(2).measurement(2).pixis_centery_px = 433;
dataset(2).measurement(2).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 0215um (3c) ap5=7.0 ap7=50.0 (bg3a#2) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_3c_d_215.0_E_047.93_average.mat');
dataset(2).measurement(2).sigma_est_um = 19;
dataset(2).measurement(2).sigma_est_min_um = 15;
dataset(2).measurement(2).sigma_est_max_um = 25;
dataset(2).measurement(3).d_um = 322;
dataset(2).measurement(3).pixis_centerx_px = 465;
dataset(2).measurement(3).pixis_centery_px = 431;
dataset(2).measurement(3).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 0322um (4c) ap5=7.0 ap7=50.0 (bg4cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_4c_d_322.0_E_047.88_average.mat');
dataset(2).measurement(3).sigma_est_um = 19;
dataset(2).measurement(3).sigma_est_min_um = 10;
dataset(2).measurement(3).sigma_est_max_um = 23;
dataset(2).measurement(4).d_um = 890;
dataset(2).measurement(4).pixis_centerx_px = 502;
dataset(2).measurement(4).pixis_centery_px = 429;
dataset(2).measurement(4).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 0890um (2d) ap5=7.0 ap7=50.0 (bg2ab) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_2d_d_890.0_E_048.06_average.mat');
dataset(2).measurement(4).sigma_est_um = 17;
dataset(2).measurement(4).sigma_est_min_um = 13;
dataset(2).measurement(4).sigma_est_max_um = 35;
dataset(2).measurement(5).d_um = 1047;
dataset(2).measurement(5).pixis_centerx_px = 502;
dataset(2).measurement(5).pixis_centery_px = 429;
dataset(2).measurement(5).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 1047um (3d) ap5=7.0 ap7=50.0 (bg3ab#1) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_3d_d_1047.0_E_047.86_average.mat');
dataset(2).measurement(5).sigma_est_um = 16;
dataset(2).measurement(5).sigma_est_min_um = 10;
dataset(2).measurement(5).sigma_est_max_um = 20;
dataset(2).measurement(6).d_um = 1335; %%% chopered data! cannot reach I_rec_min = 0
dataset(2).measurement(6).pixis_centerx_px = 470;
dataset(2).measurement(6).pixis_centery_px = 430;
dataset(2).measurement(6).datafile=strcat(datapath,'2017-11-26T1916 18.0nm 70uJ 7Und. KOAS=PMMA 1335um (4d) ap5=7.0 ap7=50.0 (bg4cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T1916.h5_ph_4d_d_1335.0_E_047.92_average.mat');
dataset(2).measurement(6).sigma_est_um = 15;
dataset(2).measurement(6).sigma_est_min_um = 10;
dataset(2).measurement(6).sigma_est_max_um = 35;

d_um_26T2300_18nm_hor_L = [ 107, 215, 322, NaN, 890, 1047, NaN ];
sigma_B_um_26T2300_18nm_hor_L = dataset(2).sigma_B_um;
%d_FWHM_26T2300_18nm_hor_L = d_um_26T2300_18nm_hor_L / FWHM_um_26T2300_18nm_hor_L;
d_sigma_B_26T2300_18nm_hor_L = d_um_26T2300_18nm_hor_L / sigma_B_um_26T2300_18nm_hor_L;
xi_um_26T2300_18nm_hor_L = [ 332.2753, 922.0736, 904.3329, NaN, 1.0239e+03, 1.1251e+03, NaN ];
for i=1:length(xi_um_26T2300_18nm_hor_L)
    zeta_26T2300_18nm_hor_L(i) = globalcoherence(xi_um_26T2300_18nm_hor_L(i), sigma_B_um_26T2300_18nm_hor_L);
end
zeta_26T2300_18nm_hor_L_mean = nanmean(zeta_26T2300_18nm_hor_L);
zeta_26T2300_18nm_hor_L_std = nanstd(zeta_26T2300_18nm_hor_L);

for i=1:length(xi_um_26T2300_18nm_hor_L)
    zeta_26T2300_18nm_L(i) = zeta_26T2300_18nm_ver_L(i) * zeta_26T2300_18nm_hor_L(i);
end
zeta_26T2300_18nm_L_mean = nanmean(zeta_26T2300_18nm_L);
zeta_26T2300_18nm_L_std = nanstd(zeta_26T2300_18nm_L);

%%% 2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm
% vertically: 
dataset(3).name = '26T2300_18nm_ver_S';
dataset(3).sigma_B_um = dataset(1).sigma_B_um / 2; % before measurements
dataset(3).wavelength_nm = 18;
dataset(3).measurement(1).d_um = 50;
dataset(3).measurement(1).pixis_centerx_px = 455;
dataset(3).measurement(1).pixis_centery_px = 487;
dataset(3).measurement(1).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0050um (1a) ap5=7.0 ap7=1.5 (bg1ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_1a_d_50.0_E_047.74_average.mat');
dataset(3).measurement(1).sigma_est_um = 64;
dataset(3).measurement(1).sigma_est_min_um = 50;
dataset(3).measurement(1).sigma_est_max_um = 68;
dataset(3).measurement(2).d_um = 107; %%?
dataset(3).measurement(2).pixis_centerx_px = 453;
dataset(3).measurement(2).pixis_centery_px = 490;
dataset(3).measurement(2).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0107um (2a) ap5=7.0 ap7=50.0 (bg2ab) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T2300.h5_ph_2a_d_107.0_E_047.87_average.mat');
dataset(3).measurement(2).sigma_est_um = 36;
dataset(3).measurement(2).sigma_est_min_um = 35;
dataset(3).measurement(2).sigma_est_max_um = 50;
dataset(3).measurement(3).d_um = 215; %%?
dataset(3).measurement(3).pixis_centerx_px = 438;
dataset(3).measurement(3).pixis_centery_px = 444;
dataset(3).measurement(3).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0215um (3a) ap5=7.0 ap7=50.0 (bg3ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_3a_d_215.0_E_047.79_average.mat');
dataset(3).measurement(3).sigma_est_um = 31;
dataset(3).measurement(3).sigma_est_min_um = 26;
dataset(3).measurement(3).sigma_est_max_um = 33;
dataset(3).measurement(4).d_um = 322;
dataset(3).measurement(4).pixis_centerx_px = 476;
dataset(3).measurement(4).pixis_centery_px = 488;
dataset(3).measurement(4).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0322um (4a) ap5=7.0 ap7=1.5 (bg4ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_4a_d_322.0_E_047.64_average.mat');
dataset(3).measurement(4).sigma_est_um = 43;
dataset(3).measurement(4).sigma_est_min_um = 39;
dataset(3).measurement(4).sigma_est_max_um = 46;
dataset(3).measurement(5).d_um = 445;
dataset(3).measurement(5).pixis_centerx_px = 476;
dataset(3).measurement(5).pixis_centery_px = 488;
dataset(3).measurement(5).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0445um (5a) ap5=7.0 ap7=1.5 (bg5ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_5a_d_445.0_E_047.64_average.mat');
dataset(3).measurement(5).sigma_est_um = 46;
dataset(3).measurement(5).sigma_est_min_um = 38;
dataset(3).measurement(5).sigma_est_max_um = 55;
dataset(3).measurement(6).d_um = 707; % I_rec_min does not reach 0
dataset(3).measurement(6).pixis_centerx_px = 455;
dataset(3).measurement(6).pixis_centery_px = 472;
dataset(3).measurement(6).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0707um (1b) ap5=7.0 ap7=1.5 (bg1ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_1b_d_707.0_E_047.84_average.mat');
dataset(3).measurement(6).sigma_est_um = 51;
dataset(3).measurement(6).sigma_est_min_um = 30;
dataset(3).measurement(6).sigma_est_max_um = 55;
dataset(3).measurement(7).d_um = 890; % I_rec_min does not reach 0
dataset(3).measurement(7).pixis_centerx_px = 374;
dataset(3).measurement(7).pixis_centery_px = 483;
dataset(3).measurement(7).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0890um (2b) ap5=7.0 ap7=50.0 (bg2ab) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T2300.h5_ph_2b_d_890.0_E_047.93_average.mat');
dataset(3).measurement(7).sigma_est_um = 39;
dataset(3).measurement(7).sigma_est_min_um = 25;
dataset(3).measurement(7).sigma_est_max_um = 55;
dataset(3).measurement(8).d_um = 1047;
dataset(3).measurement(8).pixis_centerx_px = 500;
dataset(3).measurement(8).pixis_centery_px = 400;
dataset(3).measurement(8).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 1047um (3b) ap5=7.0 ap7=1.5 (bg3ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_3b_d_1047.0_E_047.78_average.mat');
dataset(3).measurement(8).sigma_est_um = 36;
dataset(3).measurement(8).sigma_est_min_um = 30;
dataset(3).measurement(8).sigma_est_max_um = 40;

d_um_26T2300_18nm_ver_S = [ 50, 107, 215, 322, 445, 707, 890, 1047, NaN ];
sigma_B_um_26T2300_18nm_ver_S = dataset(3).sigma_B_um;
%d_FWHM_26T2300_18nm_ver_S = d_um_26T2300_18nm_ver_S / FWHM_um_26T2300_18nm_ver_S;
d_sigma_B_26T2300_18nm_ver_S = d_um_26T2300_18nm_ver_S / sigma_B_um_26T2300_18nm_ver_S;
xi_um_26T2300_18nm_ver_S = [ 266.7286,  467.7301, 564.8696, 477.9354, 386.9892, 328.1238, 427.3350, 470.8618, NaN ];
for i=1:length(xi_um_26T2300_18nm_ver_S)
    zeta_26T2300_18nm_ver_S(i) = globalcoherence(xi_um_26T2300_18nm_ver_S(i), sigma_B_um_26T2300_18nm_ver_S);
end
zeta_26T2300_18nm_ver_S_mean = nanmean(zeta_26T2300_18nm_ver_S);
zeta_26T2300_18nm_ver_S_std = nanstd(zeta_26T2300_18nm_ver_S);

% horizontally:
dataset(4).name = '26T2300_18nm_hor_S';
dataset(4).sigma_B_um = dataset(2).sigma_B_um / 2; % before measurements
dataset(4).wavelength_nm = 18;

dataset(4).measurement(1).d_um = 50;
dataset(4).measurement(1).pixis_centerx_px = 474;
dataset(4).measurement(1).pixis_centery_px = 493;
dataset(4).measurement(1).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0050um (1c#2) ap5=7.0 ap7=1.5 (bg1ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_1c#2_d_50.0_E_047.74_average.mat');
dataset(4).measurement(1).sigma_est_um = 57;
dataset(4).measurement(1).sigma_est_min_um = 50;
dataset(4).measurement(1).sigma_est_max_um = 60;
dataset(4).measurement(2).d_um = 215;
dataset(4).measurement(2).pixis_centerx_px = 522;
dataset(4).measurement(2).pixis_centery_px = 494;
dataset(4).measurement(2).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0215um (3c) ap5=7.0 ap7=1.5 (bg3ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_3c_d_215.0_E_047.70_average.mat');
dataset(4).measurement(2).sigma_est_um = 26;
dataset(4).measurement(2).sigma_est_min_um = 20;
dataset(4).measurement(2).sigma_est_max_um = 30;
dataset(4).measurement(3).d_um = 322;
dataset(4).measurement(3).pixis_centerx_px = 477;
dataset(4).measurement(3).pixis_centery_px = 488;
dataset(4).measurement(3).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0322um (4c) ap5=7.0 ap7=1.5 (bg4ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_4c_d_322.0_E_047.83_average.mat');
dataset(4).measurement(3).sigma_est_um = 36;
dataset(4).measurement(3).sigma_est_min_um = 30;
dataset(4).measurement(3).sigma_est_max_um = 40;
dataset(4).measurement(4).d_um = 445;
dataset(4).measurement(4).pixis_centerx_px = 418;
dataset(4).measurement(4).pixis_centery_px = 472;
dataset(4).measurement(4).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0445um (5c) ap5=7.0 ap7=1.5 (bg5ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_5c_d_445.0_E_047.90_average.mat');
dataset(4).measurement(4).sigma_est_um = 26;
dataset(4).measurement(4).sigma_est_min_um = 22;
dataset(4).measurement(4).sigma_est_max_um = 30;
dataset(4).measurement(5).d_um = 707;
dataset(4).measurement(5).pixis_centerx_px = 374;
dataset(4).measurement(5).pixis_centery_px = 476;
dataset(4).measurement(5).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0707um (1d#2) ap5=7.0 ap7=1.5 (bg1ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_1d#2_d_707.0_E_047.84_average.mat');
dataset(4).measurement(5).sigma_est_um = 24;
dataset(4).measurement(5).sigma_est_min_um = 20;
dataset(4).measurement(5).sigma_est_max_um = 26;
dataset(4).measurement(6).d_um = 890;
dataset(4).measurement(6).pixis_centerx_px = 374;
dataset(4).measurement(6).pixis_centery_px = 467;
dataset(4).measurement(6).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 0890um (2d) ap5=7.0 ap7=50.0 (bg2ab) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-26T2300.h5_ph_2d_d_890.0_E_047.88_average.mat');
dataset(4).measurement(6).sigma_est_um = 28;
dataset(4).measurement(6).sigma_est_min_um = 10;
dataset(4).measurement(6).sigma_est_max_um = 35;
dataset(4).measurement(7).d_um = 1047;
dataset(4).measurement(7).pixis_centerx_px = 530;
dataset(4).measurement(7).pixis_centery_px = 490;
dataset(4).measurement(7).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 1047um (3d) ap5=7.0 ap7=1.5 (bg3ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_3d_d_1047.0_E_047.67_average.mat');
dataset(4).measurement(7).sigma_est_um = 22;
dataset(4).measurement(7).sigma_est_min_um = 15;
dataset(4).measurement(7).sigma_est_max_um = 35;
dataset(4).measurement(8).d_um = 1335;
dataset(4).measurement(8).pixis_centerx_px = 530;
dataset(4).measurement(8).pixis_centery_px = 450;
dataset(4).measurement(8).datafile=strcat(datapath,'2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm 1335um (4d) ap5=7.0 ap7=1.5 (bg4ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-26T2300.h5_ph_4d_d_1335.0_E_047.80_average.mat');
dataset(4).measurement(8).sigma_est_um = 19;
dataset(4).measurement(8).sigma_est_min_um = 15;
dataset(4).measurement(8).sigma_est_max_um = 23;

d_um_26T2300_18nm_hor_S = [ 50, NaN, 215, 322, 445, 707, 890, 1047, 1335 ];
sigma_B_um_26T2300_18nm_hor_S = dataset(4).sigma_B_um;
%d_FWHM_26T2300_18nm_hor_S = d_um_26T2300_18nm_hor_S / FWHM_um_26T2300_18nm_hor_S;
d_sigma_B_26T2300_18nm_hor_S = d_um_26T2300_18nm_ver_S / sigma_B_um_26T2300_18nm_hor_S;
xi_um_26T2300_18nm_hor_S = [ 313.1795, NaN, 680.4464, 471.8095, 650.6023, 729.7264, 625.6716, 802.7694, 886.0035 ];
for i=1:length(xi_um_26T2300_18nm_hor_S)
    zeta_26T2300_18nm_hor_S(i) = globalcoherence(xi_um_26T2300_18nm_hor_S(i), sigma_B_um_26T2300_18nm_hor_S);
end
zeta_26T2300_18nm_hor_S_mean = nanmean(zeta_26T2300_18nm_hor_S);
zeta_26T2300_18nm_hor_S_std = nanstd(zeta_26T2300_18nm_hor_S);

for i=1:length(xi_um_26T2300_18nm_hor_S)
    zeta_26T2300_18nm_S(i) = zeta_26T2300_18nm_ver_S(i) * zeta_26T2300_18nm_hor_S(i);
end
zeta_26T2300_18nm_S_mean = nanmean(zeta_26T2300_18nm_S);
zeta_26T2300_18nm_S_std = nanstd(zeta_26T2300_18nm_S);


zeta_26T2300_18nm_ver_mean = nanmean([zeta_26T2300_18nm_ver_S,zeta_26T2300_18nm_ver_L]);
zeta_26T2300_18nm_ver_std = nanstd([zeta_26T2300_18nm_ver_S,zeta_26T2300_18nm_ver_L]);

zeta_26T2300_18nm_hor_mean = nanmean([zeta_26T2300_18nm_hor_S,zeta_26T2300_18nm_hor_L]);
zeta_26T2300_18nm_hor_std = nanstd([zeta_26T2300_18nm_hor_S,zeta_26T2300_18nm_hor_L]);

zeta_26T2300_18nm_mean = zeta_26T2300_18nm_ver_mean * zeta_26T2300_18nm_ver_mean;
zeta_26T2300_18nm_error = zeta_26T2300_18nm_mean *( zeta_26T2300_18nm_hor_std/zeta_26T2300_18nm_hor_mean + zeta_26T2300_18nm_ver_std/zeta_26T2300_18nm_ver_mean ) ;

%%% 2017-11-27T1101 8.0nm 45uJ 12Und. KOAS=_mm 
%%% THIS is actually at the PMMA focus!
% vertically:
dataset(5).name = '27T1529_8nm_ver_L';
dataset(5).sigma_B_um = 618; % before measurements
%dataset(5).sigma_B_um = 612.5; % after measurements
dataset(5).wavelength_nm = 8;
dataset(5).measurement(1).d_um = 107;
dataset(5).measurement(1).pixis_centerx_px = 534;
dataset(5).measurement(1).pixis_centery_px = 436;
dataset(5).measurement(1).datafile=strcat(datapath,'2017-11-27T1101 8.0nm 45uJ 12Und. KOAS=_mm 0107um (2a#2-Nb197) ap5=7.0 ap7=50.0 (bg2ab-Nb197)/FLASH2_USER1-2017-11-27T1101.h5_ph_2a#2_d_107.0_E_040.04_average.mat');
dataset(5).measurement(1).sigma_est_um = 25;
dataset(5).measurement(1).sigma_est_min_um = 10;
dataset(5).measurement(1).sigma_est_max_um = 35;
dataset(5).measurement(2).d_um = 322;
dataset(5).measurement(2).pixis_centerx_px = 508;
dataset(5).measurement(2).pixis_centery_px = 410;
dataset(5).measurement(2).datafile=strcat(datapath,'2017-11-27T1101 8.0nm 45uJ 12Und. KOAS=_mm 0322um (4a-none) ap5=7.0 ap7=50.0 (bg3cd-none)/FLASH2_USER1-2017-11-27T1101.h5_ph_4a_d_322.0_E_041.64_average.mat');
dataset(5).measurement(2).sigma_est_um = 25;
dataset(5).measurement(2).sigma_est_min_um = 10;
dataset(5).measurement(2).sigma_est_max_um = 35;

d_um_27T1529_8nm_ver_L = [ 107, NaN, 322, NaN ];
sigma_B_um_27T1529_8nm_ver_L = dataset(5).sigma_B_um;
%d_FWHM_27T1529_8nm_ver_L = d_um_27T1529_8nm_ver_L / FWHM_um_27T1529_8nm_ver_L;
d_sigma_B_27T1529_8nm_ver_L = d_um_27T1529_8nm_ver_L / sigma_B_um_27T1529_8nm_ver_L;
xi_um_27T1529_8nm_ver_L = [ 311.2682, NaN, 307.6950, NaN ];


for i=1:length(xi_um_27T1529_8nm_ver_L)
    zeta_27T1529_8nm_ver_L(i) = globalcoherence(xi_um_27T1529_8nm_ver_L(i), sigma_B_um_27T1529_8nm_ver_L);
end
zeta_27T1529_8nm_ver_L_mean = nanmean(zeta_27T1529_8nm_ver_L);
zeta_27T1529_8nm_ver_L_std = nanstd(zeta_27T1529_8nm_ver_L);

% horizontally:
dataset(6).name = '27T1529_8nm_hor_L';
dataset(6).sigma_B_um = 739; % before measurements
%dataset(6).sigma_B_um = 720.5; % after measurements
dataset(6).wavelength_nm = 8;
dataset(6).measurement(1).d_um = 107;
dataset(6).measurement(1).pixis_centerx_px = 524;
dataset(6).measurement(1).pixis_centery_px = 488;
dataset(6).measurement(1).datafile=strcat(datapath,'2017-11-27T1101 8.0nm 45uJ 12Und. KOAS=_mm 0107um (2c-Nb197) ap5=7.0 ap7=50.0 (bg2ab-Nb197)/FLASH2_USER1-2017-11-27T1101.h5_ph_2c_d_107.0_E_041.38_average.mat');
dataset(6).measurement(1).sigma_est_um = 24;
dataset(6).measurement(1).sigma_est_min_um = 20;
dataset(6).measurement(1).sigma_est_max_um = 30;
dataset(6).measurement(2).d_um = 215;
dataset(6).measurement(2).pixis_centerx_px = 685;
dataset(6).measurement(2).pixis_centery_px = 490;
dataset(6).measurement(2).datafile=strcat(datapath,'2017-11-27T1101 8.0nm 45uJ 12Und. KOAS=_mm 0215um (3c#1-none) ap5=7.0 ap7=50.0 (bg3cd-none)/FLASH2_USER1-2017-11-27T1101.h5_ph_3c#1_d_215.0_E_037.60_average.mat');
dataset(6).measurement(2).sigma_est_um = 16;
dataset(6).measurement(2).sigma_est_min_um = 1;
dataset(6).measurement(2).sigma_est_max_um = 35;
dataset(6).measurement(3).d_um = 890;
dataset(6).measurement(3).pixis_centerx_px = 570;
dataset(6).measurement(3).pixis_centery_px = 480;
dataset(6).measurement(3).datafile=strcat(datapath,'2017-11-27T1101 8.0nm 45uJ 12Und. KOAS=_mm 0890um (2d#1-Nb197) ap5=7.0 ap7=50.0 (bg2ab-Nb197)/FLASH2_USER1-2017-11-27T1101.h5_ph_2d#1_d_890.0_E_039.84_average.mat');
dataset(6).measurement(3).sigma_est_um = 13;
dataset(6).measurement(3).sigma_est_min_um = 10;
dataset(6).measurement(3).sigma_est_max_um = 35;

d_um_27T1529_8nm_hor_L = [ 107, 215, NaN, 890 ];
sigma_B_um_27T1529_8nm_hor_L = dataset(6).sigma_B_um;
%d_FWHM_27T1529_8nm_hor_L = d_um_27T1529_8nm_hor_L / FWHM_um_27T1529_8nm_hor_L;
d_sigma_B_27T1529_8nm_hor_L = d_um_27T1529_8nm_hor_L / sigma_B_um_27T1529_8nm_hor_L;
xi_um_27T1529_8nm_hor_L = [ 351.0928, 497.5362, NaN, 702.4303 ];
for i=1:length(xi_um_27T1529_8nm_hor_L)
    zeta_27T1529_8nm_hor_L(i) = globalcoherence(xi_um_27T1529_8nm_hor_L(i), sigma_B_um_27T1529_8nm_hor_L);
end
zeta_27T1529_8nm_hor_L_mean = nanmean(zeta_27T1529_8nm_hor_L);
zeta_27T1529_8nm_hor_L_std = nanstd(zeta_27T1529_8nm_hor_L);


for i=1:length(xi_um_27T1529_8nm_hor_L)
    zeta_27T1529_8nm_L(i) = zeta_27T1529_8nm_ver_L(i) * zeta_27T1529_8nm_hor_L(i);
end
zeta_27T1529_8nm_L_mean = nanmean(zeta_27T1529_8nm_L);
zeta_27T1529_8nm_L_std = nanstd(zeta_27T1529_8nm_L);


%%% 2017-11-27T1529 8.0nm 45uJ 12Und. KOAS=PMMA
%%% This is actually the smaller beam!
% vertically:
dataset(7).name = '27T1529_8nm_ver_S';
dataset(7).sigma_B_um = dataset(5).sigma_B_um / 2;
dataset(7).wavelength_nm = 8;
dataset(7).measurement(1).d_um = 215;
dataset(7).measurement(1).pixis_centerx_px = 561;
dataset(7).measurement(1).pixis_centery_px = 460;
dataset(7).measurement(1).datafile=strcat(datapath,'2017-11-27T1529 8.0nm 45uJ 12Und. KOAS=PMMA 0215um (3a#1) ap5=7.0 ap7=50.0 (bg3cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-27T1529.h5_ph_3a#1_d_215.0_E_041.32_average.mat');
dataset(7).measurement(1).sigma_est_um = 30;
dataset(7).measurement(1).sigma_est_min_um = 10;
dataset(7).measurement(1).sigma_est_max_um = 35;
dataset(7).measurement(2).d_um = 322;
dataset(7).measurement(2).pixis_centerx_px = 533;
dataset(7).measurement(2).pixis_centery_px = 441;
dataset(7).measurement(2).datafile=strcat(datapath,'2017-11-27T1529 8.0nm 45uJ 12Und. KOAS=PMMA 0322um (4a) ap5=7.0 ap7=50.0 (bg3cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-27T1529.h5_ph_4a_d_322.0_E_039.39_average.mat')
dataset(7).measurement(2).sigma_est_um = 34;
dataset(7).measurement(2).sigma_est_min_um = 10;
dataset(7).measurement(2).sigma_est_max_um = 40;
dataset(7).measurement(3).d_um = 445;
dataset(7).measurement(3).pixis_centerx_px = 459;
dataset(7).measurement(3).pixis_centery_px = 438;
dataset(7).measurement(3).datafile=strcat(datapath,'2017-11-27T1529 8.0nm 45uJ 12Und. KOAS=PMMA 0445um (5a) ap5=7.0 ap7=50.0 (bg5ab) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-27T1529.h5_ph_5a_d_445.0_E_042.36_average.mat');
dataset(7).measurement(3).sigma_est_um = 41;
dataset(7).measurement(3).sigma_est_min_um = 15;
dataset(7).measurement(3).sigma_est_max_um = 50;
dataset(7).measurement(4).d_um = 707;
dataset(7).measurement(4).pixis_centerx_px = 500;
dataset(7).measurement(4).pixis_centery_px = 454;
dataset(7).measurement(4).datafile=strcat(datapath,'2017-11-27T1529 8.0nm 45uJ 12Und. KOAS=PMMA 0707um (1b) ap5=7.0 ap7=50.0 (bg1cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-27T1529.h5_ph_1b_d_707.0_E_040.86_average.mat');
dataset(7).measurement(4).sigma_est_um = 43;
dataset(7).measurement(4).sigma_est_min_um = 30;
dataset(7).measurement(4).sigma_est_max_um = 60;

d_um_27T1529_8nm_ver_S = [ 215, 322, 445, 707 ];
sigma_B_um_27T1529_8nm_ver_S = dataset(7).sigma_B_um;
%d_FWHM_27T1529_8nm_ver_S = d_um_27T1529_8nm_ver_S / FWHM_um_27T1529_8nm_ver_S;
d_sigma_B_27T1529_8nm_ver_S = d_um_27T1529_8nm_ver_S / sigma_B_um_27T1529_8nm_ver_S;
xi_um_27T1529_8nm_ver_S = [ 247.6399, 273.6594, 180.0854, 171.7345 ];
for i=1:length(xi_um_27T1529_8nm_ver_S)
    zeta_27T1529_8nm_ver_S(i) = globalcoherence(xi_um_27T1529_8nm_ver_S(i), sigma_B_um_27T1529_8nm_ver_S);
end
zeta_27T1529_8nm_ver_S_mean = nanmean(zeta_27T1529_8nm_ver_S);
zeta_27T1529_8nm_ver_S_std = nanstd(zeta_27T1529_8nm_ver_S);


% horizontally:
dataset(8).name = '27T1529_8nm_hor_S';
dataset(8).sigma_B_um = dataset(7).sigma_B_um / 2;
dataset(8).wavelength_nm = 8;
dataset(8).measurement(1).d_um = 215;
dataset(8).measurement(1).pixis_centerx_px = 557;
dataset(8).measurement(1).pixis_centery_px = 529;
dataset(8).measurement(1).datafile=strcat(datapath,'2017-11-27T1529 8.0nm 45uJ 12Und. KOAS=PMMA 0215um (3c) ap5=7.0 ap7=50.0 (bg3cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-27T1529.h5_ph_3c_d_215.0_E_039.98_average.mat');
dataset(8).measurement(1).sigma_est_um = 20;
dataset(8).measurement(1).sigma_est_min_um = 10;
dataset(8).measurement(1).sigma_est_max_um = 35;
dataset(8).measurement(2).d_um = 445;
dataset(8).measurement(2).pixis_centerx_px = 421;
dataset(8).measurement(2).pixis_centery_px = 509;
dataset(8).measurement(2).datafile=strcat(datapath,'2017-11-27T1529 8.0nm 45uJ 12Und. KOAS=PMMA 0445um (5c) ap5=7.0 ap7=50.0 (bg5ab) ap5=7.0 ap7=50.0  /FLASH2_USER1-2017-11-27T1529.h5_ph_5c_d_445.0_E_042.04_average.mat');
dataset(8).measurement(2).sigma_est_um = 23;
dataset(8).measurement(2).sigma_est_min_um = 10;
dataset(8).measurement(2).sigma_est_max_um = 35;
dataset(8).measurement(3).d_um = 707;
dataset(8).measurement(3).pixis_centerx_px = 501;
dataset(8).measurement(3).pixis_centery_px = 528;
dataset(8).measurement(3).datafile=strcat(datapath,'2017-11-27T1529 8.0nm 45uJ 12Und. KOAS=PMMA 0707um (1d) ap5=7.0 ap7=50.0 (bg1cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-27T1529.h5_ph_1d_d_707.0_E_040.91_average.mat');
dataset(8).measurement(3).sigma_est_um = 19;
dataset(8).measurement(3).sigma_est_min_um = 10;
dataset(8).measurement(3).sigma_est_max_um = 35;

d_um_27T1529_8nm_hor_S = [ 215, NaN, 445, 707 ];
sigma_B_um_27T1529_8nm_hor_S = dataset(8).sigma_B_um;
%d_FWHM_27T1529_8nm_hor_S = d_um_27T1529_8nm_hor_S / FWHM_um_27T1529_8nm_hor_S;
d_sigma_B_27T1529_8nm_hor_S = d_um_27T1529_8nm_ver_S / sigma_B_um_27T1529_8nm_hor_S;
xi_um_27T1529_8nm_hor_S = [ 373.8574, NaN, 321.9275, 352.4699 ];
for i=1:length(xi_um_27T1529_8nm_hor_S)
    zeta_27T1529_8nm_hor_S(i) = globalcoherence(xi_um_27T1529_8nm_hor_S(i), sigma_B_um_27T1529_8nm_hor_S);
end
zeta_27T1529_8nm_hor_S_mean = nanmean(zeta_27T1529_8nm_hor_S);
zeta_27T1529_8nm_hor_S_std = nanstd(zeta_27T1529_8nm_hor_S);


for i=1:length(xi_um_27T1529_8nm_hor_S)
    zeta_27T1529_8nm_S(i) = zeta_27T1529_8nm_ver_S(i) * zeta_27T1529_8nm_hor_S(i);
end
zeta_27T1529_8nm_S_mean = nanmean(zeta_27T1529_8nm_S);
zeta_27T1529_8nm_S_std = nanstd(zeta_27T1529_8nm_S);


zeta_27T1529_8nm_ver_mean = nanmean([zeta_27T1529_8nm_ver_S,zeta_27T1529_8nm_ver_L]);
zeta_27T1529_8nm_ver_std = nanstd([zeta_27T1529_8nm_ver_S,zeta_27T1529_8nm_ver_L]);

zeta_27T1529_8nm_hor_mean = nanmean([zeta_27T1529_8nm_hor_S,zeta_27T1529_8nm_hor_L]);
zeta_27T1529_8nm_hor_std = nanstd([zeta_27T1529_8nm_hor_S,zeta_27T1529_8nm_hor_L]);

zeta_27T1529_8nm_mean = zeta_27T1529_8nm_ver_mean * zeta_27T1529_8nm_ver_mean;
zeta_27T1529_8nm_error = zeta_27T1529_8nm_mean *( zeta_27T1529_8nm_hor_std/zeta_27T1529_8nm_hor_mean + zeta_27T1529_8nm_ver_std/zeta_27T1529_8nm_ver_mean ) ;




%%% 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA
% vertically:
dataset(9).name = '29T1007_13p5nm_ver_L';
dataset(9).sigma_B_um = 644; % before measurements
%dataset(9).sigma_B_um = 664.75; % after measurements
dataset(9).wavelength_nm = 13.5;
dataset(9).measurement(1).d_um = 107;
dataset(9).measurement(1).pixis_centerx_px = 540;
dataset(9).measurement(1).pixis_centery_px = 510;
dataset(9).measurement(1).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0107um (2a#3) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg2ab#1) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_2a#3_d_107.0_E_114.42_average.mat');
dataset(9).measurement(1).sigma_est_um = 30;
dataset(9).measurement(1).sigma_est_min_um = 15;
dataset(9).measurement(1).sigma_est_max_um = 35;
dataset(9).measurement(2).d_um = 215; % no file ?????
dataset(9).measurement(2).pixis_centerx_px = 473;
dataset(9).measurement(2).pixis_centery_px = 490;
dataset(9).measurement(2).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0215um (3a#3) ap5=7.0 ap7=1.5 (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_3a#3_d_215.0_E_111.81_average.mat');
dataset(9).measurement(2).sigma_est_um = 22;
dataset(9).measurement(2).sigma_est_min_um = 15;
dataset(9).measurement(2).sigma_est_max_um = 35;
dataset(9).measurement(3).d_um = 322; %?? deconvblind not working for sigma_est_um=35
dataset(9).measurement(3).pixis_centerx_px = 464;
dataset(9).measurement(3).pixis_centery_px = 580;
dataset(9).measurement(3).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0322um (4a#3) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_4a#3_d_322.0_E_105.60_average.mat');
dataset(9).measurement(3).sigma_est_um = 33; % 34 does not show up? weird normalization?
dataset(9).measurement(3).sigma_est_min_um = 15;
dataset(9).measurement(3).sigma_est_max_um = 34; 
dataset(9).measurement(4).d_um = 322; % 23 makes problems, minima of right hand side of profile would become zero, problem with background?
dataset(9).measurement(4).pixis_centerx_px = 492;
dataset(9).measurement(4).pixis_centery_px = 520;
dataset(9).measurement(4).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0322um (4a#4) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_4a#4_d_322.0_E_109.94_average.mat');
dataset(9).measurement(4).sigma_est_um = 20;
dataset(9).measurement(4).sigma_est_min_um = 18;
dataset(9).measurement(4).sigma_est_max_um = 22;
dataset(9).measurement(5).d_um = 445;
dataset(9).measurement(5).pixis_centerx_px = 500;
dataset(9).measurement(5).pixis_centery_px = 500;
dataset(9).measurement(5).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0445um (5a#03) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm (bg5cd) ap5=8.8 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_5a#03_d_445.0_E_109.75_average.mat');
dataset(9).measurement(5).sigma_est_um = 20;
dataset(9).measurement(5).sigma_est_min_um = 15;
dataset(9).measurement(5).sigma_est_max_um = 23;
dataset(9).measurement(6).d_um = 707;
dataset(9).measurement(6).pixis_centerx_px = 500;
dataset(9).measurement(6).pixis_centery_px = 500;
dataset(9).measurement(6).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0707um (1b) ap5=7.0 ap7=1.5 2017-11-26T2300 13.5nm 111uJ 12Und. KOAS=1.5mm (bg1ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-29T1007.h5_ph_1b#3_d_707.0_E_107.02_average.mat');
dataset(9).measurement(6).sigma_est_um = 29;
dataset(9).measurement(6).sigma_est_min_um = 15;
dataset(9).measurement(6).sigma_est_max_um = 32;
dataset(9).measurement(7).d_um = 890;
dataset(9).measurement(7).pixis_centerx_px = 480;
dataset(9).measurement(7).pixis_centery_px = 480;
dataset(9).measurement(7).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0890um (2b#1) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg2ab#1) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_2b#3_d_890.0_E_111.31_average.mat');
dataset(9).measurement(7).sigma_est_um = 29;
dataset(9).measurement(7).sigma_est_min_um = 15;
dataset(9).measurement(7).sigma_est_max_um = 38;
dataset(9).measurement(8).d_um = 890; 
dataset(9).measurement(8).pixis_centerx_px = 480;
dataset(9).measurement(8).pixis_centery_px = 480;
dataset(9).measurement(8).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0890um (2b#2) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg2ab#1) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_2b#4_d_890.0_E_112.95_average.mat');
dataset(9).measurement(8).sigma_est_um = 23;
dataset(9).measurement(8).sigma_est_min_um = 15;
dataset(9).measurement(8).sigma_est_max_um = 28;
dataset(9).measurement(9).d_um = 1047;
dataset(9).measurement(9).pixis_centerx_px = 500;
dataset(9).measurement(9).pixis_centery_px = 480;
dataset(9).measurement(9).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 1047um (3b#3) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_3b#3_d_1047.0_E_106.60_average.mat');
dataset(9).measurement(9).sigma_est_um = 20;
dataset(9).measurement(9).sigma_est_min_um = 15;
dataset(9).measurement(9).sigma_est_max_um = 35;

d_um_29T1007_13p5nm_ver_L = [ 215, NaN, 445, 707, 890, 890, 1047 ]; 
sigma_B_um_29T1007_13p5nm_ver_L = dataset(9).sigma_B_um;
%d_FWHM_29T1007_13p5nm_ver_L = d_um_29T1007_13p5nm_ver_L / FWHM_um_29T1007_13p5nm_ver_L;
d_sigma_B_29T1007_13p5nm_ver_L = d_um_29T1007_13p5nm_ver_L / sigma_B_um_29T1007_13p5nm_ver_L;
xi_um_29T1007_13p5nm_ver_L = [ 642.6470, NaN, 622.9184, 445.5118, 432.5878, 575.5449, 624.3753];

for i=1:length(xi_um_29T1007_13p5nm_ver_L)
    zeta_29T1007_13p5nm_ver_L(i) = globalcoherence(xi_um_29T1007_13p5nm_ver_L(i), sigma_B_um_29T1007_13p5nm_ver_L);
end
zeta_29T1007_13p5nm_ver_L_mean = nanmean(zeta_29T1007_13p5nm_ver_L);
zeta_29T1007_13p5nm_ver_L_std = nanstd(zeta_29T1007_13p5nm_ver_L);

% horizontally:
dataset(10).name = '29T1007_13p5nm_hor_L';
dataset(10).sigma_B_um = 873.25; % before measurements
%dataset(10).sigma_B_um = 869.5; % after measurements
dataset(10).wavelength_nm = 13.5;
dataset(10).measurement(1).d_um = 107;
dataset(10).measurement(1).pixis_centerx_px = 532;
dataset(10).measurement(1).pixis_centery_px = 550;
dataset(10).measurement(1).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0107um (2c#2) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg2ab#1) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_2c#2_d_107.0_E_112.92_average.mat');
dataset(10).measurement(1).sigma_est_um = 60;
dataset(10).measurement(1).sigma_est_min_um = 40;
dataset(10).measurement(1).sigma_est_max_um = 60;
dataset(10).measurement(2).d_um = 215; 
dataset(10).measurement(2).pixis_centerx_px = 557;
dataset(10).measurement(2).pixis_centery_px = 530;
dataset(10).measurement(2).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0215um (3c#2) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_3c#2_d_215.0_E_107.29_average.mat');
dataset(10).measurement(2).sigma_est_um = 24; % higher than 24 creates flat I_rec ????
dataset(10).measurement(2).sigma_est_min_um = 10;
dataset(10).measurement(2).sigma_est_max_um = 35;
dataset(10).measurement(3).d_um = 322;
dataset(10).measurement(3).pixis_centerx_px = 430;
dataset(10).measurement(3).pixis_centery_px = 500;
dataset(10).measurement(3).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0445um (5c#2) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm (bg5cd) ap5=8.8 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_5c#2_d_445.0_E_113.85_average.mat');
dataset(10).measurement(3).sigma_est_um = 20;
dataset(10).measurement(3).sigma_est_min_um = 10;
dataset(10).measurement(3).sigma_est_max_um = 35;
dataset(10).measurement(4).d_um = 445;
dataset(10).measurement(4).pixis_centerx_px = 480;
dataset(10).measurement(4).pixis_centery_px = 480;
dataset(10).measurement(4).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0445um (5c#2) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm (bg5cd) ap5=8.8 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_5c#2_d_445.0_E_113.85_average.mat');
dataset(10).measurement(4).sigma_est_um = 20;
dataset(10).measurement(4).sigma_est_min_um = 10;
dataset(10).measurement(4).sigma_est_max_um = 35;
dataset(10).measurement(5).d_um = 707;
dataset(10).measurement(5).pixis_centerx_px = 480;
dataset(10).measurement(5).pixis_centery_px = 520;
dataset(10).measurement(5).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0707um (1d) ap5=7.0 ap7=1.5 2017-11-26T2300 18.0nm 70uJ 7Und. KOAS=1.5mm (bg1ab) ap5=7.0 ap7=1.5/FLASH2_USER1-2017-11-29T1007.h5_ph_1d#2_d_707.0_E_113.17_average.mat');
dataset(10).measurement(5).sigma_est_um = 26;
dataset(10).measurement(5).sigma_est_min_um = 10;
dataset(10).measurement(5).sigma_est_max_um = 35;
dataset(10).measurement(6).d_um = 890;
dataset(10).measurement(6).pixis_centerx_px = 500;
dataset(10).measurement(6).pixis_centery_px = 500;
dataset(10).measurement(6).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 0890um (2d#2) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg2ab#1) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_2d#2_d_890.0_E_115.11_average.mat');
dataset(10).measurement(6).sigma_est_um = 22;
dataset(10).measurement(6).sigma_est_min_um = 10;
dataset(10).measurement(6).sigma_est_max_um = 35;
dataset(10).measurement(7).d_um = 1047;
dataset(10).measurement(7).pixis_centerx_px = 500;
dataset(10).measurement(7).pixis_centery_px = 520;
dataset(10).measurement(7).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA 1047um (3d#2) ap5=7.0 ap7=1.5 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_3d#2_d_1047.0_E_105.38_average.mat');
dataset(10).measurement(7).sigma_est_um = 27;
dataset(10).measurement(7).sigma_est_min_um = 10;
dataset(10).measurement(7).sigma_est_max_um = 35;

d_um_29T1007_13p5nm_hor_L = [ 215, 322, 445, 707, 890, 890, 1047 ];
sigma_B_um_29T1007_13p5nm_hor_L = dataset(10).sigma_B_um;
%d_FWHM_29T1007_13p5nm_hor_L = d_um_29T1007_13p5nm_hor_L / FWHM_um_29T1007_13p5nm_hor_L;
d_sigma_B_29T1007_13p5nm_hor_L = d_um_29T1007_13p5nm_hor_L / sigma_B_um_29T1007_13p5nm_hor_L;
xi_um_29T1007_13p5nm_hor_L = [ 505.1040, 630.3814, 624.3011, 569.6138, 598.1924, 598.1924, 463.4609 ];
for i=1:length(xi_um_29T1007_13p5nm_hor_L)
    zeta_29T1007_13p5nm_hor_L(i) = globalcoherence(xi_um_29T1007_13p5nm_hor_L(i), sigma_B_um_29T1007_13p5nm_hor_L);
end
zeta_29T1007_13p5nm_hor_L_mean = nanmean(zeta_29T1007_13p5nm_hor_L);
zeta_29T1007_13p5nm_hor_L_std = nanstd(zeta_29T1007_13p5nm_hor_L);

d_um_29T1007_13p5nm_L = [ 215, 322, 445, 707, 890, 890, 1047 ];

for i=1:length(d_um_29T1007_13p5nm_hor_L)
    zeta_29T1007_13p5nm_L(i) = zeta_29T1007_13p5nm_hor_L(i) * zeta_29T1007_13p5nm_ver_L(i);
end


%%% 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm
% vertically:
dataset(11).name = '29T1007_13p5nm_ver_S';
dataset(11).sigma_B_um = dataset(9).sigma_B_um / 2;
dataset(11).wavelength_nm = 13.5;
dataset(11).measurement(1).d_um = 50; % bg?? 
dataset(11).measurement(1).pixis_centerx_px = 556;
dataset(11).measurement(1).pixis_centery_px = 500;
dataset(11).measurement(1).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0050um (1a#1) ap5=7.0 ap7=50.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm (bg1cd) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_1a#1_d_50.0_E_112.94_average.mat');
dataset(11).measurement(1).sigma_est_um = 35;
dataset(11).measurement(1).sigma_est_min_um = 10;
dataset(11).measurement(1).sigma_est_max_um = 40;
dataset(11).measurement(2).d_um = 107; % bg??
dataset(11).measurement(2).pixis_centerx_px = 506;
dataset(11).measurement(2).pixis_centery_px = 465;
dataset(11).measurement(2).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0107um (2a#1) ap5=7.0 ap7=50.0.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg2ab#1) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_2a#1_d_107.0_E_103.10_average.mat')
dataset(11).measurement(2).sigma_est_um = 12;
dataset(11).measurement(2).sigma_est_min_um = 10;
dataset(11).measurement(2).sigma_est_max_um = 55;
dataset(11).measurement(3).d_um = 107;
dataset(11).measurement(3).pixis_centerx_px = 545;
dataset(11).measurement(3).pixis_centery_px = 470;
dataset(11).measurement(3).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0107um (2a#2) ap5=8.8 ap7=3.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm (bg2ab#2) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_2a#2_d_107.0_E_111.65_average.mat');
dataset(11).measurement(3).sigma_est_um = 37;
dataset(11).measurement(3).sigma_est_min_um = 10;
dataset(11).measurement(3).sigma_est_max_um = 40;
dataset(11).measurement(4).d_um = 215;
dataset(11).measurement(4).pixis_centerx_px = 555;
dataset(11).measurement(4).pixis_centery_px = 530;
dataset(11).measurement(4).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0215um (3a#1) ap5=7.0 ap7=50.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_3a#1_d_215.0_E_111.12_average.mat');
dataset(11).measurement(4).sigma_est_um = 31;
dataset(11).measurement(4).sigma_est_min_um = 15;
dataset(11).measurement(4).sigma_est_max_um = 40;
dataset(11).measurement(5).d_um = 215;
dataset(11).measurement(5).pixis_centerx_px = 549;
dataset(11).measurement(5).pixis_centery_px = 500;
dataset(11).measurement(5).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0215um (3a#2) ap5=8.8 ap7=50.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_3a#2_d_215.0_E_108.12_average.mat');
dataset(11).measurement(5).sigma_est_um = 28;
dataset(11).measurement(5).sigma_est_min_um = 15;
dataset(11).measurement(5).sigma_est_max_um = 40;
dataset(11).measurement(6).d_um = 322;
dataset(11).measurement(6).pixis_centerx_px = 486;
dataset(11).measurement(6).pixis_centery_px = 520;
dataset(11).measurement(6).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0322um (4a#1) ap5=7.0 ap7=50.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_4a#1_d_322.0_E_107.45_average.mat');
dataset(11).measurement(6).sigma_est_um = 40;
dataset(11).measurement(6).sigma_est_min_um = 15;
dataset(11).measurement(6).sigma_est_max_um = 40;
dataset(11).measurement(7).d_um = 322; %??
dataset(11).measurement(7).pixis_centerx_px = 526;
dataset(11).measurement(7).pixis_centery_px = 523;
dataset(11).measurement(7).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0322um (4a#2) ap5=8.8 ap7=3.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_4a#2_d_322.0_E_110.23_average.mat');
dataset(11).measurement(7).sigma_est_um = 37;
dataset(11).measurement(7).sigma_est_min_um = 15;
dataset(11).measurement(7).sigma_est_max_um = 40;
dataset(11).measurement(8).d_um = 707;
dataset(11).measurement(8).pixis_centerx_px = 556;
dataset(11).measurement(8).pixis_centery_px = 500;
dataset(11).measurement(8).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0707um (1b#1) ap5=7.0 ap7=50.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm (bg1cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-29T1007.h5_ph_1b#1_d_707.0_E_112.92_average.mat');
dataset(11).measurement(8).sigma_est_um = 27;
dataset(11).measurement(8).sigma_est_min_um = 15;
dataset(11).measurement(8).sigma_est_max_um = 40;

d_um_29T1007_13p5nm_ver_S = [ NaN, 107, 215, 215, 322, 322, NaN, 707 ];
sigma_B_um_29T1007_13p5nm_ver_S = dataset(11).sigma_B_um;
%d_FWHM_29T1007_13p5nm_ver_S = d_um_29T1007_13p5nm_ver_S / FWHM_um_29T1007_13p5nm_ver_S;
d_sigma_B_29T1007_13p5nm_ver_S = d_um_29T1007_13p5nm_ver_S / sigma_B_um_29T1007_13p5nm_ver_S;
xi_um_29T1007_13p5nm_ver_S = [ NaN, 350.5551, 403.8876, 445.4800, 345.4695, 345.1456, NaN, 339.1556 ];

for i=1:length(xi_um_29T1007_13p5nm_ver_S)
    zeta_29T1007_13p5nm_ver_S(i) = globalcoherence(xi_um_29T1007_13p5nm_ver_S(i), sigma_B_um_29T1007_13p5nm_ver_S);
end
zeta_29T1007_13p5nm_ver_S_mean = nanmean(zeta_29T1007_13p5nm_ver_S);
zeta_29T1007_13p5nm_ver_S_std = nanstd(zeta_29T1007_13p5nm_ver_S);

% horizontally:
dataset(12).name = '29T1007_13p5nm_hor_S';
dataset(12).sigma_B_um = dataset(10).sigma_B_um / 2;
dataset(12).wavelength_nm = 13.5;
dataset(12).wavelength_nm = 13.5;
dataset(12).measurement(1).d_um = 50;
dataset(12).measurement(1).pixis_centerx_px = 498;
dataset(12).measurement(1).pixis_centery_px = 490;
dataset(12).measurement(1).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0050um (1c#1) ap5=7.0 ap7=50.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm (bg1cd) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_1c#1_d_50.0_E_111.73_average.mat');
dataset(12).measurement(1).sigma_est_um = 15;
dataset(12).measurement(1).sigma_est_min_um = 10;
dataset(12).measurement(1).sigma_est_max_um = 25;
dataset(12).measurement(2).d_um = 107; %%%? at he fringe
dataset(12).measurement(2).pixis_centerx_px = 558;
dataset(12).measurement(2).pixis_centery_px = 490;
dataset(12).measurement(2).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0107um (2c#1) ap5=7.0 ap7=50.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg2ab#1) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_2c#1_d_107.0_E_104.53_average.mat');
dataset(12).measurement(2).sigma_est_um = 60;
dataset(12).measurement(2).sigma_est_min_um = 30;
dataset(12).measurement(2).sigma_est_max_um = 60;
dataset(12).measurement(3).d_um = 215;
dataset(12).measurement(3).pixis_centerx_px = 489;
dataset(12).measurement(3).pixis_centery_px = 520;
dataset(12).measurement(3).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0215um (3c#1) ap5=7.0 ap7=50.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_3c#1_d_215.0_E_103.47_average.mat');
dataset(12).measurement(3).sigma_est_um = 32;
dataset(12).measurement(3).sigma_est_min_um = 15;
dataset(12).measurement(3).sigma_est_max_um = 40;
dataset(12).measurement(4).d_um = 322;
dataset(12).measurement(4).pixis_centerx_px = 377;
dataset(12).measurement(4).pixis_centery_px = 523;
dataset(12).measurement(4).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0322um (4c#1) ap5=7.0 ap7=50.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=PMMA (bg3ab) ap5=7.0 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_4c#1_d_322.0_E_109.30_average.mat');
dataset(12).measurement(4).sigma_est_um = 41;
dataset(12).measurement(4).sigma_est_min_um = 15;
dataset(12).measurement(4).sigma_est_max_um = 41;
dataset(12).measurement(5).d_um = 445;
dataset(12).measurement(5).pixis_centerx_px = 539;
dataset(12).measurement(5).pixis_centery_px = 523;
dataset(12).measurement(5).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0445um (5c#1) ap5=7.0 ap7=3.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm (bg5cd) ap5=8.8 ap7=3.0/FLASH2_USER1-2017-11-29T1007.h5_ph_5c#1_d_445.0_E_112.38_average.mat');
dataset(12).measurement(5).sigma_est_um = 35;
dataset(12).measurement(5).sigma_est_min_um = 15;
dataset(12).measurement(5).sigma_est_max_um = 40;
dataset(12).measurement(6).d_um = 707;
dataset(12).measurement(6).pixis_centerx_px = 556;
dataset(12).measurement(6).pixis_centery_px = 500;
dataset(12).measurement(6).datafile=strcat(datapath,'2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm 0707um (1d#0) ap5=7.0 ap7=50.0 2017-11-29T1007 13.5nm 111uJ 12Und. KOAS=1.5mm (bg1cd) ap5=7.0 ap7=50.0/FLASH2_USER1-2017-11-29T1007.h5_ph_1d#0_d_707.0_E_106.39_average.mat');
dataset(12).measurement(6).sigma_est_um = 34;
dataset(12).measurement(6).sigma_est_min_um = 15;
dataset(12).measurement(6).sigma_est_max_um = 40;

d_um_29T1007_13p5nm_hor_S = [ 50, NaN, 215, 215, 322, 322, 445, 707 ];
sigma_B_um_29T1007_13p5nm_hor_S = dataset(12).sigma_B_um;
%d_FWHM_29T1007_13p5nm_hor_S = d_um_29T1007_13p5nm_hor_S / FWHM_um_29T1007_13p5nm_hor_S;
d_sigma_B_29T1007_13p5nm_hor_S = d_um_29T1007_13p5nm_hor_S / sigma_B_um_29T1007_13p5nm_hor_S;
xi_um_29T1007_13p5nm_hor_S = [ 848.5169, NaN, 404.6551, 404.6551, 338.4204, 338.4204, 356.9162, 382.4135 ];
for i=1:length(xi_um_29T1007_13p5nm_hor_S)
    zeta_29T1007_13p5nm_hor_S(i) = globalcoherence(xi_um_29T1007_13p5nm_hor_S(i), sigma_B_um_29T1007_13p5nm_hor_S);
end
zeta_29T1007_13p5nm_hor_S_mean = nanmean(zeta_29T1007_13p5nm_hor_S);
zeta_29T1007_13p5nm_hor_S_std = nanstd(zeta_29T1007_13p5nm_hor_S);


for i=1:length(xi_um_29T1007_13p5nm_hor_S)
    zeta_29T1007_13p5nm_S(i) = zeta_29T1007_13p5nm_ver_S(i) * zeta_29T1007_13p5nm_hor_S(i);
end

zeta_29T1007_13p5nm_S_mean = nanmean(zeta_29T1007_13p5nm_S);
zeta_29T1007_13p5nm_S_std = nanstd(zeta_29T1007_13p5nm_S);






zeta_29T1007_13p5nm_L_mean = nanmean(zeta_29T1007_13p5nm_L);
zeta_29T1007_13p5nm_L_std = nanstd(zeta_29T1007_13p5nm_L);

zeta_29T1007_13p5nm_ver_mean = nanmean([zeta_29T1007_13p5nm_ver_S,zeta_29T1007_13p5nm_ver_L]);
zeta_29T1007_13p5nm_ver_std = nanstd([zeta_29T1007_13p5nm_ver_S,zeta_29T1007_13p5nm_ver_L]);

zeta_29T1007_13p5nm_hor_mean = nanmean([zeta_29T1007_13p5nm_hor_S,zeta_29T1007_13p5nm_hor_L]);
zeta_29T1007_13p5nm_hor_std = nanstd([zeta_29T1007_13p5nm_hor_S,zeta_29T1007_13p5nm_hor_L]);

zeta_29T1007_13p5nm_mean = zeta_29T1007_13p5nm_ver_mean * zeta_29T1007_13p5nm_hor_mean;
zeta_29T1007_13p5nm_error = zeta_29T1007_13p5nm_mean *( zeta_29T1007_13p5nm_hor_std/zeta_29T1007_13p5nm_hor_mean + zeta_29T1007_13p5nm_ver_std/zeta_29T1007_13p5nm_ver_mean ) ;

%end