function [I_pixis,pixis_image_norm,n,idx_row,idx_col,gamma_rec,F_gamma_rec,I_pc_rec,I_rec,sigma_F_gamma_rec_hor_um,I_rec_profile,I_rec_profile_min,sigma_B_um,zeta,D,pixis_image_norm_hist,corr_I_pixis_I_pc_rec,abs_gamma,xi_um_hor,xi_um_ver,X1_axis,Y1_axis,X2_axis,Y2_axis,R_1,iter,pinholes_image_norm,sigma_est_um_opt] = run_deconvolution(dataset_name,d_um,datafile,pixis_centerx_px,pixis_centery_px,wavelength_nm,sigma_B_um,sigma_est_min_um,sigma_est_max_um,sigma_est_um,sigma_est_um_array)

load(datafile);
%%
findmax = false;  
% look for the maximum Intensity in the image or use the
% center coordinates from the definitions above 
% (which were found with the jupyter script semiautomatic by hand)
%% 
% unit definitions:
m = 1 ;
nm = 1e-9 ;
um = 1e-6 ;
mm = 1e-3 ;
cm = 1e-2 ;
R_1 = 1/um ;

% parameters of the experiment:
wavelength = wavelength_nm * nm ;
k = 2*pi/wavelength ;
%n = 1024 ; % number of pixels of the full pixis 1024B
R = 10 * um ; % pinhole diameter
z = 5781 * mm ; % distance pinholes to detector
%d_um = 215;
d = d_um * um ; % pinhole separation

% loading the data
I_pixis = pixis_image_norm;
I_pixis = norm_function(I_pixis);  % normalize

% center of the interference pattern:
if findmax == true
    [M,idx] = max(I_pixis(:));
    [idx_row, idx_col] = ind2sub(size(I_pixis),idx);
else   
    idx_row = pixis_centery_px;
    idx_col = pixis_centerx_px;
end

% number of pixels in the rotated and cropped image of the PIXIS CCD:
n = size(pixis_image_norm);
n = n(1);

% pixel size of the detector dX_1
dX_1 = 13 * 1e-6 ;
dY_1 = dX_1 ;

% 2D grid and axes at the CCD:
[X_1,Y_1] = meshgrid(dX_1*(-n/2:n/2-1),dY_1*(-n/2:n/2-1)) ; % numerical grid
X1_axis = ((1:n)-floor(n/2)-1) * dX_1;
Y1_axis = ((1:n)-floor(n/2)-1) * dY_1;

z_0 = 1067 * mm ;
z_T = z + z_0 ;
z_eff = z * z_0 / (z_T) ;

% "pixelsize" at the pinholes:
dX_2 = wavelength*z/(n*dX_1);
dY_2 = wavelength*z/(n*dY_1);

% 2D grid and axes at the double pinholes:
[X_2,Y_2] = meshgrid(dX_2*(-n/2:n/2-1),dY_2*(-n/2:n/2-1));
X2_axis = ((1:n)-floor(n/2)-1)*dX_2;
Y2_axis = ((1:n)-floor(n/2)-1)*dY_2;

% initial psf guess as ones:

%psfi = ones(size(I)/20);

%sigma_est = 0.5 * 1e-3 ; 
%F_gamma_est = GAUSS(X_1,Y_1,sigma_est);

%F_gamma_est = F_gamma_rec;

%F_gamma_est= ones(size(I_pixis));

% parameters of the deconvolution algorithm
iter = 30;  % number of iteration
dampar = 1e-3;  % damping parameter
weight = ones(size(I_pixis));
weight(I_pixis<0.2e-2) = 0;  % why?

readout = [];
%
%sigma_est_um = [50:50:600];
%sigma_est_um = 18;
%sigma_est_um_min = 27;
%sigma_est_um_max = 27;
%sigma_est_um_array = [sigma_est_um-5:1:sigma_est_um+2];
%sigma_est_um_array = [sigma_est_min_um:1:sigma_est_max_um];
%sigma_est_um_array = [sigma_est_um];
%


for i=1:length(sigma_est_um_array)
	sigma_est_um_array(i)
	sigma_est = sigma_est_um_array(i) * 1e-6;
	F_gamma_est = GAUSS(X_1,Y_1,sigma_est); % create start estimate for F_gamma assuming to be a Gaussian
	F_gamma_est = norm_function(F_gamma_est);  % normalize it

	% blind deconvolution algorithm gives reconstructed fully coherent
	% pattern I_rec and corresponding F_gamma_rec
	[I_rec(:,:,i),F_gamma_rec(:,:,i)] = deconvblind(I_pixis,F_gamma_est,iter,dampar,weight,readout);
	%I_rec(:,:,i) = norm_function(I_rec(:,:,i)); % normalize
    I_rec(:,:,i) = I_rec(:,:,i)/I_rec(pixis_centery_px,pixis_centerx_px,i); % normalize
	F_gamma_rec(:,:,i) = norm_function(F_gamma_rec(:,:,i));  % normalize

	% gamma_rec as inverse FT from F_gamma:
	gamma_rec(:,:,i) = ifourier2D(F_gamma_rec(:,:,i));

	% correlation coefficent between measurement and fully coherent
	% reconstuction
	corr_I_pixis_I_rec(i) = corr2(I_pixis,I_rec(:,:,i));


	%--- determine coherence length \xi as the rms width sigma of the vertical lineout of abs(gamma)

	% abs(gamma_rec):
	abs_gamma(:,:,i) = norm_function(abs(gamma_rec(:,:,i)));

	% lineout at pinhole plate position
	x = Y2_axis*R_1;
	y_ver = abs_gamma(:,round(n/2+1),i);  % vertical lineout of abs(gamma)
	y_hor = abs_gamma(round(n/2+1),:,i).';  % horizontal lineout of abs(gamma)

	% fit Gaussian:
	options = fitoptions('gauss1');
	% amplitude should be 1 and shift 0
	options.Lower = [1 0 0];
	options.Upper = [1 0 Inf];
	% do the fit:
	[f, G, O] = fit(x.',y_ver,'gauss1')
	f_coeff = coeffvalues(f);
	% coherence length \xi is the rms width sigma of the fitted Gaussian:
	xi_um_ver(i) = f_coeff(3)/sqrt(2);
	
	[f, G, O] = fit(x.',y_hor,'gauss1')
	f_coeff = coeffvalues(f);
	% coherence length \xi is the rms width sigma of the fitted Gaussian:
	xi_um_hor(i) = f_coeff(3)/sqrt(2);
	
	zeta(i) = globalcoherence(xi_um_hor(i), sigma_B_um);


	%--- determine a Gaussian fit F_gamma_rec2 of F_gamma_rec (to quantify F_gamma_rec)
	x = Y1_axis*R_1;
	y_ver = F_gamma_rec(:,round(n/2+1),i);
	y_hor = F_gamma_rec(round(n/2+1),:,i);

	options = fitoptions('gauss1');
	options.Lower = [1 0 0];
	options.Upper = [1 0 Inf];
	[f, G, O] = fit(x.',y_hor.','gauss1',options)
	f_coeff = coeffvalues(f);
	sigma_F_gamma_rec_hor_um(i) = f_coeff(3)/sqrt(2);

	sigma_F_gamma_rec_hor = sigma_F_gamma_rec_hor_um(i) * 1e-6;
	F_gamma_rec2_hor(:,:,i) = GAUSS(X_1,Y_1,sigma_F_gamma_rec_hor); % Gaussian based on fit on horizontal lineout of F_gamma_rec
    F_gamma_rec2_hor(:,:,i) = norm_function(F_gamma_rec2_hor(:,:,i));


	%--- convolve reconstructed fully coherent Intensity I_rec with the found F_gamma_rec to check with the original measurement data

	I_pc_rec(:,:,i) = conv2(I_rec(:,:,i),F_gamma_rec(:,:,i),'same');
	%I_pc_rec = norm_function(I_pc_rec(round(n/2):(end-round(n/2)),round(n/2):(end-round(n/2))));
	%I_pc_rec(:,:,i) = norm_function(I_pc_rec(:,:,i));
    I_pc_rec(:,:,i) = I_pc_rec(:,:,i) / I_pc_rec(pixis_centery_px,pixis_centerx_px,i);

	%I_pc_rec2(:,:,i) = conv2(I_rec(:,:,i),F_gamma_rec2(:,:,i),'same');
	%I_pc_rec2(:,:,i) = norm_function(I_pc_rec2(round(n/2):(end-round(n/2)),round(n/2):(end-round(n/2))));
	% fixing????

	pixis_image_norm_hist(:,:,i) = imhist(pixis_image_norm);
	I_pc_rec_hist(:,:,i) = imhist(I_pc_rec(:,:,i));
	D(i) = pdist2(I_pc_rec_hist(:,:,i)', pixis_image_norm_hist(:,:,i)', 'chisq');

	corr_I_pixis_I_pc_rec(i) = corr2(I_pixis,I_pc_rec(:,:,i));

	%--- lineouts of partially coherent measurement and fully coherent reconstruction
	deltay = 25;

	I_pixis_profile = norm_function(mean(I_pixis(idx_row-deltay:idx_row+deltay,:)));
	I_pixis_profile_min = min(I_pixis_profile(round(n/2)-200:round(n/2)+200));
	I_rec_profile(:,:,i) = norm_function(mean(I_rec(idx_row-deltay:idx_row+deltay,:,i)));
	I_rec_profile_min(i) = min(I_rec_profile(:,round(n/2)-200:round(n/2)+200,i));
    
end

%% find sigma_est_hor_um where I_rec_profile_min becomes 0
sigma_est_um_opt = sigma_est_um_array(min(find(I_rec_profile_min == 0)))

end