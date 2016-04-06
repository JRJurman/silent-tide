figure;
hold on;

plot(munki_gray_Ys, cam_gray_rgbs(1, :), 'r-');
plot(munki_gray_Ys, cam_gray_rgbs(2, :), 'g-');
plot(munki_gray_Ys, cam_gray_rgbs(3, :), 'b-');

title('Original grayscale Y to RGB relationship');
legend('Red', 'Green', 'Blue', 'Location', 'nw');
xlabel('munki gray Ys');
ylabel('camera gray RGBs');
