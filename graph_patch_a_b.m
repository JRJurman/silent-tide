% get the Lab and delta Eab data for plotting
patch_deltaEab;

% generate a new figure, and keep all the plots there
figure;
hold on;

grid on;

xlabel('a*');
ylabel('b*');

ax = gca;
axis([-60 60 -60 60]);
axis square;
ax.XTick = -60:10:60;
ax.YTick = -60:10:60;

% add patches to plot
pointSize = 0;
plot(tm_real_Labs(2), tm_real_Labs(3), 'bo', 'MarkerFaceColor', 'b');
plot(tm_imaged_Labs(2), tm_imaged_Labs(3), 'bs', 'MarkerFaceColor', 'b');
plot(tm_matching_Labs(2), tm_matching_Labs(3), 'bd', 'MarkerFaceColor', 'b');
plot(st_real_Labs(2), st_real_Labs(3), 'ro', 'MarkerFaceColor', 'r');
plot(st_imaged_Labs(2), st_imaged_Labs(3), 'rs', 'MarkerFaceColor', 'r');
plot(st_matching_Labs(2), st_matching_Labs(3), 'rd', 'MarkerFaceColor', 'r');

% add radii
radiiSize = 2.5;
ang = 0:0.01:2*pi;
xp = radiiSize*cos(ang);
yp = radiiSize*sin(ang);

plot(tm_real_Labs(2)+xp, tm_real_Labs(3)+yp, 'k');
plot(st_real_Labs(2)+xp, st_real_Labs(3)+yp, 'k');

%plot(tm_real_Labs(2), tm_real_Labs(3), 'ko', 'MarkerSize', radiiSize);
%plot(st_real_Labs(2), st_real_Labs(3), 'ko', 'MarkerSize', radiiSize);

% 27.1 - teal mosaic
% 27.2 - silent tide
legend('27.1 real','27.1 imaged','27.1 matching', '27.2 real', '27.2 imaged', '27.2 matching', 'Location', 'NorthEast');
hold off;
