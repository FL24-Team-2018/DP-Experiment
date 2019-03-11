function generate_plots(dataset_name,wavelength_nm,d_um,sigma_est_um,sigma_est_um_array,I_pixis,pixis_image_norm,n,idx_row,idx_col,gamma_rec,F_gamma_rec,I_pc_rec,I_rec,sigma_F_gamma_rec_hor_um,I_rec_profile,I_rec_profile_min,sigma_B_um,zeta,D,pixis_image_norm_hist,corr_I_pixis_I_pc_rec,abs_gamma,xi_um_hor,xi_um_ver,X1_axis,Y1_axis,X2_axis,Y2_axis,R_1,iter,pinholes_image_norm)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%%
figure('rend', 'painters','pos', [200 200 500 1800]);

nrows = 7;

subplot(nrows,1,1)
plot(sigma_est_um_array,sigma_F_gamma_rec_hor_um,'-xb');
xlabel('\sigma_{est}/um'), ylabel('\sigma_{FT(\gamma)}');

subplot(nrows,1,2)
% plot(sigma_est_um_array,corr_I_pixis_I_rec,'-xb');
% xlabel('\sigma_{est}/um'), ylabel('corr\_I\_pixis\_I\_rec');
plot(sigma_est_um_array,I_rec_profile_min,'-xb');
xlabel('\sigma_{est}/um'), ylabel('minimum of reconstructed\newline profile I_{rec}');

subplot(nrows,1,3)
plot(sigma_est_um_array,xi_um_hor,'-xb');
xlabel('\sigma_{est}/um'), ylabel('coherence length \xi / um');

subplot(nrows,1,4)
plot(sigma_est_um_array,xi_um_hor/sigma_B_um,'-xb');
xlabel('\sigma_{est}/um'), ylabel('\xi/\sigma_B');

subplot(nrows,1,5)
plot(sigma_est_um_array,zeta,'-xb');
xlabel('\sigma_{est}/um'), ylabel('norm. degree of tr. coherence \zeta / um');

subplot(nrows,1,6)
plot(sigma_est_um_array,D,'-xb');
xlabel('\sigma_{est}/um'), ylabel('distance between histograms of I_{pc,det} vs. I_{pc,rec}');

subplot(nrows,1,7)
plot(sigma_est_um_array,corr_I_pixis_I_pc_rec,'-xb');
xlabel('\sigma_{est}/um'), ylabel('correlation between histograms of I_{pc,det} vs. I_{pc,rec}');




folder = strcat('plots/',dataset_name,'_d_',num2str(d_um),'um/');
if ~exist(folder, 'dir')
    mkdir(folder);
end
saveas(gcf,fullfile(cd,folder,'measures_of_reconstruction'),'png');
saveas(gcf,fullfile(cd,folder,'measures_of_reconstruction'),'epsc');


%% pick the Sigma_um by hand, where I_rec_profile_min becomes 0 or is minimal



%Sigma_um = 10;  % change it here, otherwise use the value defined above
i = find(sigma_est_um_array==sigma_est_um)
xi_um_hor(i)



%%
% figure(2);
% imagesc(X1_axis*R_1,Y1_axis*R_1,F_gamma_est);
% axis equal; 
% title(strcat('Estimation of F(\gamma) as Gaussian with \sigma=',num2str(Sigma_um(i)),'um')); 
% xlabel('x/um'), ylabel('y/um');
% colormap(gca,jet);


%% backpropagate Intensity to double pinhole plate
% backpropagate Intensity to the pinhole plate by doing a inverse FT of the
% measurement
A_bp = ifourier2D(sqrt(I_pixis));  % amplitude
I_bp = abs(A_bp).^2;  % intensity

figure('rend', 'painters','pos', [1010 510 500 500]);
imagesc(X2_axis*R_1,Y2_axis*R_1,log10(I_bp));
colormap(gca,jet);
title('log10(I_{ph} = FT(I_{pixis}))\newline(backpropagated intensity at pinhole plate)');
colorbar; 
axis equal;
xlabel('x/um'), ylabel('y/um');

saveas(gcf,fullfile(cd,folder,'intensity_at_pinholes'),'png');
saveas(gcf,fullfile(cd,folder,'intensity_at_pinholes'),'epsc');


%%
figure('rend', 'painters','pos', [1010 10 500 1500]);

subplot(4,1,1);
imagesc(X1_axis*R_1,Y1_axis*R_1,F_gamma_rec(:,:,i)); colormap(gca,jet); title(strcat('recovered F(\gamma) at CCD,\newline \sigma=',num2str(sigma_est_um_array(i)),'um',', iter=',num2str(iter),', \lambda = ',num2str(wavelength_nm),'nm', ', d=',num2str(d_um),'um'));
colorbar;
xlabel('x/um'), ylabel('y/um');
axis equal tight;
xlim([-100 100]);
ylim([-100 100]);

subplot(4,1,2);
imagesc(X2_axis*R_1,Y2_axis*R_1,abs_gamma(:,:,i)); colormap(gca,jet); title(strcat('recovered abs(\gamma) at Pinholes,\newline xi=',num2str(xi_um_hor(i)),'um'));colorbar;
xlabel('x/um'), ylabel('y/um');
axis equal tight;


% lineout at pinhole plate position
subplot(4,1,3)
x = Y2_axis*R_1;
%y = abs_gamma(:,round(n/2+1),i);  % vertical lineout of abs(gamma)
y = abs_gamma(round(n/2+1),:,i);  % horizontal lineout of abs(gamma)
% missing fit!
sigma = xi_um_hor(i);
y_fit = exp(-(x.^2)/(2*sigma^2));
plot(x,y);
hold on
plot(x,y_fit);
hold off
xlabel('x/um'), ylabel('abs(\gamma)_{rec}');
title(strcat('recovered abs(\gamma) at Pinholes,\newline xi=',num2str(xi_um_hor(i)),'um'));

% lineout at pinhole plate position
subplot(4,1,4)
x = Y2_axis*R_1;
y = abs_gamma(:,round(n/2+1),i);  % vertical lineout of abs(gamma)
%y = abs_gamma(round(n/2+1),:,i);  % horizontal lineout of abs(gamma)
% missing fit!
sigma = xi_um_ver(i);
y_fit = exp(-(x.^2)/(2*sigma^2));
plot(x,y);
hold on
plot(x,y_fit);
hold off
xlabel('y/um'), ylabel('abs(\gamma)_{rec}');
title(strcat('recovered abs(\gamma) at Pinholes,\newline xi=',num2str(xi_um_ver(i)),'um'));

saveas(gcf,fullfile(cd,folder,'fgamma_and_gama'),'png');
saveas(gcf,fullfile(cd,folder,'fgamma_and_gama'),'epsc');



%% histogram comparison between orginal image and reconstructed partially coherent image
figure('rend', 'painters','pos', [510 10 500 500]);

subplot(2,2,1);
imagesc(X1_axis*R_1,Y1_axis*R_1,I_pixis);
colormap(gca,jet); title(strcat('partially coherent measurement I_{pixis} at CCD', ', \lambda = ',num2str(wavelength_nm),'nm', ', d=',num2str(d_um),'um')); colorbar; axis equal;
xlabel('x/um'), ylabel('y/um');
axis equal tight;

subplot(2,2,3);
imagesc(X1_axis*R_1,Y1_axis*R_1,I_pc_rec(:,:,i));
axis equal tight; title(strcat('I_{rec} * F(\gamma)_{rec} from blind deconvolution')); 
xlabel('x/um'), ylabel('y/um');
colormap(gca,jet); colorbar;

subplot(2,2,2);
imhist(pixis_image_norm);
title(strcat('partially coherent measurement I_{pixis} at CCD', ', \lambda = ',num2str(wavelength_nm),'nm', ', d=',num2str(d_um),'um'));

subplot(2,2,4);
imhist(I_pc_rec(:,:,i));
title(strcat('I_{rec} * F(\gamma)_{rec} from blind deconvolution (D=', num2str(D(i)), ')')); 


%% overview plots

figure('rend', 'painters','pos', [1010 100 1500 1000]);

subplot(2,3,1);
imagesc(X1_axis*R_1,Y1_axis*R_1,I_pixis); colormap(gca,jet); title(strcat('partially coherent measurement\newline I_{pixis} at CCD', ', \lambda = ',num2str(wavelength_nm),'nm', ', d=',num2str(d_um),'um')); colorbar; axis equal;
xlabel('x/um'), ylabel('y/um');
axis equal tight;

subplot(2,3,2);
imagesc(X1_axis*R_1,Y1_axis*R_1,I_rec(:,:,i)); colormap(gca,jet);
title(strcat('recovered coherent measurement\newlineI_{rec} at CCD,  \sigma=',num2str(sigma_est_um_array(i)),'um',', iter=',num2str(iter),', r=',num2str(corr_I_pixis_I_pc_rec(i))));colorbar; axis equal;
caxis([0 1]);
xlabel('x/um'), ylabel('y/um');
axis equal tight;

subplot(2,3,3);
imagesc(X1_axis*R_1,Y1_axis*R_1,I_pc_rec(:,:,i));
axis equal tight; title(strcat('I_{rec} * F(\gamma)_{rec}\newlinefrom blind deconvolution')); 
xlabel('x/um'), ylabel('y/um');
colormap(gca,jet); colorbar;

subplot(2,3,4);
imagesc(X1_axis*R_1,Y1_axis*R_1,F_gamma_rec(:,:,i)); colormap(gca,jet); title(strcat('recovered F(\gamma)_{rec} at CCD,\newline\sigma_{est,Gauss}=',num2str(sigma_est_um_array(i)),'um',', iter=',num2str(iter)));colorbar; 
%axis equal;
xlabel('x/um'), ylabel('y/um');
axis equal tight;
xlim([-100 100]);
ylim([-100 100]);



% subplot(2,3,5);
% imagesc(X1_axis*R_1,Y1_axis*R_1,F_gamma_rec2(:,:,i)); title(strcat('recovered F(\gamma)_{rec,Gauss} as Gaussian with \sigma_{rec,Gauss}=',num2str(Sigma_rec2_um(i)),'um')); 
% xlabel('x/um'), ylabel('y/um');
% colormap(gca,jet); colorbar;
% axis equal tight;
% 
% subplot(2,3,6);
% imagesc(X1_axis*R_1,Y1_axis*R_1,I_pc_rec2(:,:,i));
% axis equal tight; title(strcat('I_{rec} * F(\gamma)_{rec,Gauss} as Gaussian with \sigma_{rec,Gauss}=',num2str(Sigma_rec2_um(i)),'um')); 
% xlabel('x/um'), ylabel('y/um');
% colormap(gca,jet); colorbar;

saveas(gcf,fullfile(cd,folder,strcat('reconstructioncomparison_',num2str(sigma_est_um_array(i)),'um')),'epsc');
saveas(gcf,fullfile(cd,folder,strcat('reconstructioncomparison_',num2str(sigma_est_um_array(i)),'um')),'png');


%% lineouts of partially coherent measurement and fully coherent reconstruction
for i=1:length(sigma_est_um_array)
    figure('rend', 'painters','pos', [10 10 1500 1100],'visible','off');
    deltay = 25;
    I_pixis_profile = norm_function(mean(I_pixis(idx_row-deltay:idx_row+deltay,:)));
    min(I_pixis_profile(round(n/2)-200:round(n/2)+200))
    plot(X1_axis*R_1,I_pixis_profile,'-b', 'LineWidth',3);
    hold on
    plot(X1_axis*R_1,I_rec_profile(:,:,i),'-r', 'LineWidth',1);
    hold off
    %legend('I_{pc,data}','I_{c,rec}','FontSize', 24);
    legend({'partially coherent measurement','fully coherent reconstruction'});
    title(strcat('\lambda = ',num2str(wavelength_nm),'nm', ', separation d=',num2str(d_um),'um, ', '\newlinecoherence length \xi=',num2str(round(xi_um_hor(i),1)),'um', ' \zeta=',num2str(round(zeta(i),2))));
    xlim([-6500,6500])
    xlabel('detector position / um')
    ylabel('Intensity / a.u.')

    folder = strcat('plots/',dataset_name,'_d_',num2str(d_um),'um/');
    if ~exist(folder, 'dir')
    mkdir(folder);
    end
    saveas(gcf,fullfile(cd,folder,strcat('profiles_',num2str(sigma_est_um_array(i)),'um')),'epsc');
    saveas(gcf,fullfile(cd,folder,strcat('profiles_',num2str(sigma_est_um_array(i)),'um')),'png');
end

%% pinhole image
figure('rend', 'painters','pos', [510 510 1000 1000]);
imagesc(pinholes_image_norm); colormap(gca,jet);


end

