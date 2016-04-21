% plot the LUTs on a single plot
buildingDisplayModel;

% generate a new figure, and keep all the plots there
figure;
hold on;

plot(RLUT_rev, 'r-');
plot(GLUT_rev, 'g-');
plot(BLUT_rev, 'b-');

title('reverse model LUTs');

xlabel('digital counts RGB 0-255')
ylabel('radiometric scalars RGB 0-1')

hold off;
