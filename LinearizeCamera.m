ColorChecker_imaged_values;
ColorPickerGreyScale;
close all;

 r = 1; g = 2; b = 3;
% fit low-order polynomial functions between the camera gray rgbs
% and the munki gray Ys
cam_polys(r,:)=polyfit(cam_gray_rgbs(r,:),munki_gray_Ys,3);
cam_polys(g,:)=polyfit(cam_gray_rgbs(g,:),munki_gray_Ys,3);
cam_polys(b,:)=polyfit(cam_gray_rgbs(b,:),munki_gray_Ys,3);

% use the functions to linearize the camera RGB data
cam_grays_lin(r,:) = polyval(cam_polys(r,:),cam_gray_rgbs(r,:));
cam_grays_lin(g,:) = polyval(cam_polys(g,:),cam_gray_rgbs(g,:));
cam_grays_lin(b,:) = polyval(cam_polys(b,:),cam_gray_rgbs(b,:));
% clip out of range values
cam_grays_lin(cam_grays_lin<0) = 0;
cam_grays_lin(cam_grays_lin>1) = 1;

% use the functions to linearize the camera RGB data
cam_rgbs_lin(r,:) = polyval(cam_polys(r,:),cam_rgbs(r,:));
cam_rgbs_lin(g,:) = polyval(cam_polys(g,:),cam_rgbs(g,:));
cam_rgbs_lin(b,:) = polyval(cam_polys(b,:),cam_rgbs(b,:));
% clip out of range values
cam_rgbs_lin(cam_grays_lin<0) = 0;
cam_rgbs_lin(cam_grays_lin>1) = 1;

figure;
hold on;

plot(munki_gray_Ys, cam_grays_lin(r, :), 'r-');
plot(munki_gray_Ys, cam_grays_lin(g, :), 'g-');
plot(munki_gray_Ys, cam_grays_lin(b, :), 'b-');

title('Linearized grayscale Y to RGB relationship');
legend('Red', 'Green', 'Blue', 'Location', 'nw');
xlabel('munki gray Ys');
ylabel('linearized camera gray RGBs');
