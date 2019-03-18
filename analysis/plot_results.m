%function plot_results()

%% plot the coherence length and coherence degree over the pinhole separation
figure('rend', 'painters','pos', [10 10 1000 1000]);

subplot(3,3,1);
plot(d_um_27T1529_8nm_ver_S, xi_um_27T1529_8nm_ver_S, '-xb');
hold on
plot(d_um_27T1529_8nm_hor_S, xi_um_27T1529_8nm_hor_S, '-xr');
hold on
plot(d_um_27T1529_8nm_ver_L, xi_um_27T1529_8nm_ver_L, '-ob');
hold on
plot(d_um_27T1529_8nm_hor_L, xi_um_27T1529_8nm_hor_L, '-or');
hold on
plot([0 1335],[0 1335], ':k');
hold off
ylim([0 1400])
xlabel('separation / um'), ylabel('coherence length \xi / um');
legend(strcat('$\sigma_y=',num2str(sigma_B_um_27T1529_8nm_ver_S),'\um$'),strcat('$\sigma_x=',num2str(sigma_B_um_27T1529_8nm_hor_S),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_27T1529_8nm_ver_L),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_27T1529_8nm_hor_L),'\um$'),'Interpreter','latex','Orientation','horizontal','Location','best');
title('\lambda=8nm E=45uJ #Undulators=12');

subplot(3,3,4);
plot(d_sigma_B_27T1529_8nm_ver_S, xi_um_27T1529_8nm_ver_S, '-xb');
hold on
plot(d_sigma_B_27T1529_8nm_hor_S, xi_um_27T1529_8nm_hor_S, '-xr');
hold on
plot(d_sigma_B_27T1529_8nm_ver_L, xi_um_27T1529_8nm_ver_L, '-ob');
hold on
plot(d_sigma_B_27T1529_8nm_hor_L, xi_um_27T1529_8nm_hor_L, '-or');
%hold on
%plot([0 1335],[0 1335], ':k');
hold off
ylim([0 1400]); xlim([0 3]);
xlabel('separation / \sigma_B'), ylabel('coherence length \xi / um');
legend(strcat('$\sigma_y=',num2str(sigma_B_um_27T1529_8nm_ver_S),'\um$'),strcat('$\sigma_x=',num2str(sigma_B_um_27T1529_8nm_hor_S),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_27T1529_8nm_ver_L),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_27T1529_8nm_hor_L),'\um$'),'Interpreter','latex','Orientation','horizontal','Location','best');
title('\lambda=8nm E=45uJ #Undulators=12');


%figure('rend', 'painters','pos', [510 10 500 500]);
subplot(3,3,2);
plot(d_um_29T1007_13p5nm_ver_S, xi_um_29T1007_13p5nm_ver_S, '-xb');
hold on
plot(d_um_29T1007_13p5nm_hor_S, xi_um_29T1007_13p5nm_hor_S, '-xr');
hold on
plot(d_um_29T1007_13p5nm_ver_L, xi_um_29T1007_13p5nm_ver_L, '-ob');
hold on
plot(d_um_29T1007_13p5nm_hor_L, xi_um_29T1007_13p5nm_hor_L, '-or');
hold on
plot([0 1335],[0 1335], ':k')
hold off
ylim([0 1400]);
xlabel('separation / um'), ylabel('coherence length \xi / um');
legend(strcat('$\sigma_y=',num2str(sigma_B_um_29T1007_13p5nm_ver_S),'\um$'),strcat('$\sigma_x=',num2str(sigma_B_um_29T1007_13p5nm_hor_S),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_29T1007_13p5nm_ver_L),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_29T1007_13p5nm_hor_L),'\um$'),'Interpreter','latex','Orientation','horizontal','Location','best');
title('\lambda=13.5nm E=111uJ #Undulators=12');


%figure('rend', 'painters','pos', [510 10 500 500]);
subplot(3,3,5);
plot(d_sigma_B_29T1007_13p5nm_ver_S, xi_um_29T1007_13p5nm_ver_S, '-xb');
hold on
plot(d_sigma_B_29T1007_13p5nm_hor_S, xi_um_29T1007_13p5nm_hor_S, '-xr');
hold on
plot(d_sigma_B_29T1007_13p5nm_ver_L, xi_um_29T1007_13p5nm_ver_L, '-ob');
hold on
plot(d_sigma_B_29T1007_13p5nm_hor_L, xi_um_29T1007_13p5nm_hor_L, '-or');
hold on
%plot([0 1335],[0 1335], ':k')
%hold off
ylim([0 1400]); xlim([0 3]);
xlabel('separation / \sigma_B'), ylabel('coherence length \xi / um');
legend(strcat('$\sigma_y=',num2str(sigma_B_um_29T1007_13p5nm_ver_S),'\um$'),strcat('$\sigma_x=',num2str(sigma_B_um_29T1007_13p5nm_hor_S),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_29T1007_13p5nm_ver_L),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_29T1007_13p5nm_hor_L),'\um'),'Interpreter','latex','Orientation','horizontal','Location','best');
title('\lambda=13.5nm E=111uJ #Undulators=12');


%figure('rend', 'painters','pos', [1010 10 500 500]);
subplot(3,3,3);
plot(d_um_26T2300_18nm_ver_S, xi_um_26T2300_18nm_ver_S, '-xb');
hold on
plot(d_um_26T2300_18nm_hor_S, xi_um_26T2300_18nm_hor_S, '-xr');
hold on
plot(d_um_26T2300_18nm_ver_L, xi_um_26T2300_18nm_ver_L, '-ob');
hold on
plot(d_um_26T2300_18nm_hor_L, xi_um_26T2300_18nm_hor_L, '-or');
hold on
plot(d_um_26T2300_18nm_ver_L, d_um_26T2300_18nm_ver_L, ':k');
hold off
xlabel('separation / um'), ylabel('coherence length \xi / um');
legend(strcat('$\sigma_y=',num2str(sigma_B_um_26T2300_18nm_ver_S),'\um$'),strcat('$\sigma_x=',num2str(sigma_B_um_26T2300_18nm_hor_S),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_26T2300_18nm_ver_L),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_26T2300_18nm_hor_L),'\um$'),'Interpreter','latex','Orientation','horizontal','Location','best');
title('\lambda=18.0nm E=48uJ #Undulators=7');
ylim([0 1400]);


%figure('rend', 'painters','pos', [1010 10 500 500]);
subplot(3,3,6);
plot(d_sigma_B_26T2300_18nm_ver_S, xi_um_26T2300_18nm_ver_S, '-xb');
hold on
plot(d_sigma_B_26T2300_18nm_hor_S, xi_um_26T2300_18nm_hor_S, '-xr');
hold on
plot(d_sigma_B_26T2300_18nm_ver_L, xi_um_26T2300_18nm_ver_L, '-ob');
hold on
plot(d_sigma_B_26T2300_18nm_hor_L, xi_um_26T2300_18nm_hor_L, '-or');
hold on
hold off
xlabel('separation / \sigma_B'), ylabel('coherence length \xi / um');
legend(strcat('$\sigma_y=',num2str(sigma_B_um_26T2300_18nm_ver_S),'\um$'),strcat('$\sigma_x=',num2str(sigma_B_um_26T2300_18nm_hor_S),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_26T2300_18nm_ver_L),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_26T2300_18nm_hor_L),'\um$'),'Interpreter','latex','Orientation','horizontal','Location','best');
title('\lambda=18.0nm E=48uJ #Undulators=7');
ylim([0 1400]); xlim([0 3]);


%figure('rend', 'painters','pos', [510 10 500 500]);
subplot(3,3,7);
plot(d_sigma_B_27T1529_8nm_ver_S, zeta_27T1529_8nm_ver_S, 'xb');
hold on
plot(d_sigma_B_27T1529_8nm_hor_S, zeta_27T1529_8nm_hor_S, 'xr');
hold on
plot(d_sigma_B_27T1529_8nm_ver_L, zeta_27T1529_8nm_ver_L, 'ob');
hold on
plot(d_sigma_B_27T1529_8nm_hor_L, zeta_27T1529_8nm_hor_L, 'or');
hold on
plot([0,3], [zeta_27T1529_8nm_ver_mean,zeta_27T1529_8nm_ver_mean], '-b');
plot([0,3], [zeta_27T1529_8nm_ver_mean+zeta_27T1529_8nm_ver_std,zeta_27T1529_8nm_ver_mean+zeta_27T1529_8nm_ver_std], ':b');
plot([0,3], [zeta_27T1529_8nm_ver_mean-zeta_27T1529_8nm_ver_std,zeta_27T1529_8nm_ver_mean-zeta_27T1529_8nm_ver_std], ':b');
hold on
plot([0,3], [zeta_27T1529_8nm_hor_mean,zeta_27T1529_8nm_hor_mean], '-r');
plot([0,3], [zeta_27T1529_8nm_hor_mean+zeta_27T1529_8nm_hor_std,zeta_27T1529_8nm_hor_mean+zeta_27T1529_8nm_hor_std], ':r');
plot([0,3], [zeta_27T1529_8nm_hor_mean-zeta_27T1529_8nm_hor_std,zeta_27T1529_8nm_hor_mean-zeta_27T1529_8nm_hor_std], ':r');
hold off
ylim([0 0.8]); xlim([0 3]);
xlabel('separation / \sigma_B'), ylabel('normalized degree of transverse coherence \zeta_{x,y}');
%legend('FWHM_y=1.00mm','FWHM_x=1.05mm','FWHM_y=2.00mm','FWHM_x=2.10mm','Orientation','horizontal','Location','best');
legend(strcat('$\sigma_y=',num2str(sigma_B_um_27T1529_8nm_ver_S),'\um$'),strcat('$\sigma_x=',num2str(sigma_B_um_27T1529_8nm_hor_S),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_27T1529_8nm_ver_L),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_27T1529_8nm_hor_L),'\um$'),'Interpreter','latex','Orientation','horizontal','Location','best');
title(strcat('\lambda=8nm E=45uJ #Undulators=12 \zeta_{x}=(',num2str(round(zeta_27T1529_8nm_hor_mean*100,0)),'\pm',num2str(round(zeta_27T1529_8nm_hor_std*100,0)),')% ',' \zeta_{y}=(',num2str(round(zeta_27T1529_8nm_ver_mean*100,0)),'\pm',num2str(round(zeta_27T1529_8nm_ver_std*100,0)), ')% \zeta=(',num2str(round(zeta_27T1529_8nm_mean*100,0)),'\pm',num2str(round(zeta_27T1529_8nm_error*100,0)),')%'));


%figure('rend', 'painters','pos', [1010 10 500 500]);
subplot(3,3,8);
plot(d_sigma_B_29T1007_13p5nm_ver_S, zeta_29T1007_13p5nm_ver_S, 'xb');
hold on
plot(d_sigma_B_29T1007_13p5nm_hor_S, zeta_29T1007_13p5nm_hor_S, 'xr');
hold on
plot(d_sigma_B_29T1007_13p5nm_ver_L, zeta_29T1007_13p5nm_ver_L, 'ob');
hold on
plot(d_sigma_B_29T1007_13p5nm_hor_L, zeta_29T1007_13p5nm_hor_L, 'or');
hold on
plot([0,3], [zeta_29T1007_13p5nm_ver_mean,zeta_29T1007_13p5nm_ver_mean], '-b');
plot([0,3], [zeta_29T1007_13p5nm_ver_mean+zeta_29T1007_13p5nm_ver_std,zeta_29T1007_13p5nm_ver_mean+zeta_29T1007_13p5nm_ver_std], ':b');
plot([0,3], [zeta_29T1007_13p5nm_ver_mean-zeta_29T1007_13p5nm_ver_std,zeta_29T1007_13p5nm_ver_mean-zeta_29T1007_13p5nm_ver_std], ':b');
hold on
plot([0,3], [zeta_29T1007_13p5nm_hor_mean,zeta_29T1007_13p5nm_hor_mean], '-r');
plot([0,3], [zeta_29T1007_13p5nm_hor_mean+zeta_29T1007_13p5nm_hor_std,zeta_29T1007_13p5nm_hor_mean+zeta_29T1007_13p5nm_hor_std], ':r');
plot([0,3], [zeta_29T1007_13p5nm_hor_mean-zeta_29T1007_13p5nm_hor_std,zeta_29T1007_13p5nm_hor_mean-zeta_29T1007_13p5nm_hor_std], ':r');
hold off
xlabel('separation / \sigma_B'), ylabel('normalized degree of transverse coherence \zeta_{x,y}');
%legend('FWHM_y=1.00mm','FWHM_x=1.05mm','FWHM_y=2.00mm','FWHM_x=2.10mm','Orientation','horizontal','Location','best');
legend(strcat('$\sigma_y=',num2str(sigma_B_um_29T1007_13p5nm_ver_S),'\um$'),strcat('$\sigma_x=',num2str(sigma_B_um_29T1007_13p5nm_hor_S),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_29T1007_13p5nm_ver_L),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_29T1007_13p5nm_hor_L),'\um$'),'Interpreter','latex','Orientation','horizontal','Location','best');
title(strcat('\lambda=13.5nm E=111uJ #Undulators=12 \zeta_{x}=(',num2str(round(zeta_29T1007_13p5nm_hor_mean*100,0)),'\pm',num2str(round(zeta_29T1007_13p5nm_hor_std*100,0)),')% ',' \zeta_{y}=(',num2str(round(zeta_29T1007_13p5nm_ver_mean*100,0)),'\pm',num2str(round(zeta_29T1007_13p5nm_ver_std*100,0)), ')% \zeta=(',num2str(round(zeta_29T1007_13p5nm_mean*100,0)),'\pm',num2str(round(zeta_29T1007_13p5nm_error*100,0)),')%'));
ylim([0 0.8]); xlim([0 3]);


%figure('rend', 'painters','pos', [1010 10 500 500]);
subplot(3,3,9);
plot(d_sigma_B_26T2300_18nm_ver_S, zeta_26T2300_18nm_ver_S, 'xb');
hold on
plot(d_sigma_B_26T2300_18nm_hor_S, zeta_26T2300_18nm_hor_S, 'xr');
hold on
plot(d_sigma_B_26T2300_18nm_ver_L, zeta_26T2300_18nm_ver_L, 'ob');
hold on
plot(d_sigma_B_26T2300_18nm_hor_L, zeta_26T2300_18nm_hor_L, 'or');
hold on
plot([0,3], [zeta_26T2300_18nm_ver_mean,zeta_26T2300_18nm_ver_mean], '-b');
plot([0,3], [zeta_26T2300_18nm_ver_mean+zeta_26T2300_18nm_ver_std,zeta_26T2300_18nm_ver_mean+zeta_26T2300_18nm_ver_std], ':b','HandleVisibility','off');
plot([0,3], [zeta_26T2300_18nm_ver_mean-zeta_26T2300_18nm_ver_std,zeta_26T2300_18nm_ver_mean-zeta_26T2300_18nm_ver_std], ':b','HandleVisibility','off');
hold on
plot([0,3], [zeta_26T2300_18nm_hor_mean,zeta_26T2300_18nm_hor_mean], '-r');
plot([0,3], [zeta_26T2300_18nm_hor_mean+zeta_26T2300_18nm_hor_std,zeta_26T2300_18nm_hor_mean+zeta_26T2300_18nm_hor_std], ':r','HandleVisibility','off');
plot([0,3], [zeta_26T2300_18nm_hor_mean-zeta_26T2300_18nm_hor_std,zeta_26T2300_18nm_hor_mean-zeta_26T2300_18nm_hor_std], ':r','HandleVisibility','off');
hold off
xlabel('separation / \sigma_B'), ylabel('normalized degree of transverse coherence \zeta_{x,y}');
%legend('FWHM_y=1.20mm','FWHM_x=1.20mm','FWHM_y=2.40mm','FWHM_x=2.40mm','Orientation','horizontal','Location','best');
legend(strcat('$\sigma_y=',num2str(sigma_B_um_26T2300_18nm_ver_S),'\um$'),strcat('$\sigma_x=',num2str(sigma_B_um_26T2300_18nm_hor_S),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_26T2300_18nm_ver_L),'\um$'),strcat('$\sigma_y=',num2str(sigma_B_um_26T2300_18nm_hor_L),'\um$'),'Interpreter','latex','Orientation','horizontal','Location','best');
title(strcat('\lambda=18.0nm E=48uJ #Undulators=7 \zeta_{x}=(',num2str(round(zeta_26T2300_18nm_hor_mean*100,0)),'\pm',num2str(round(zeta_26T2300_18nm_hor_std*100,0)),')% ',' \zeta_{y}=(',num2str(round(zeta_26T2300_18nm_ver_mean*100,0)),'\pm',num2str(round(zeta_26T2300_18nm_ver_std*100,0)), ')% \zeta=(',num2str(round(zeta_26T2300_18nm_mean*100,0)),'\pm',num2str(round(zeta_26T2300_18nm_error*100,0)),')%'));
ylim([0 0.8]); xlim([0 3]);



%% total degree of coherence \zeta is \zeta_vertical * \zeta_horizontal
figure('rend', 'painters','pos', [10 10 1000 500]);

%figure('rend', 'painters','pos', [510 10 500 500]);

errorbar([8, 13.5, 18],[zeta_27T1529_8nm_mean,zeta_29T1007_13p5nm_mean,zeta_26T2300_18nm_mean],[zeta_27T1529_8nm_error,zeta_29T1007_13p5nm_error,zeta_26T2300_18nm_error]);
ylim([0 0.8]); xlim([7 19]);
xlabel('wavelength / nm'), ylabel('\zeta');
title('total normalized degree of transverse coherence \zeta = \zeta_{x} \cdot \zeta_{y}');

%end