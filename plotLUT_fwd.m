% plot the LUTs on a single plot
buildForwardLUT;

% generate a new figure, and keep all the plots there
figure;
hold on;

plot(RLUT_fwd, 'r-');
plot(GLUT_fwd, 'g-');
plot(BLUT_fwd, 'b-');

title('foward model LUTs');

xlabel('digital counts RGB 0-255')
ylabel('radiometric scalars RGB 0-1')

hold off;