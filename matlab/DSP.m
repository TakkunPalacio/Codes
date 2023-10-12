% Define the values of n
n = 0:100;

% Define the wave
x = 3*cos(0.1*pi*n+pi/3) + 2*sin(0.5*pi*n);

% Plot the stem graph
stem(n, x, 'filled', 'LineStyle', 'none', 'Marker', 'o', 'MarkerFaceColor', 'blue', 'MarkerEdgeColor', 'blue');

% Add labels and title
xlabel('n');
ylabel('x[n]');
title('Stem Graph of x[n] = 3*cos(0.1*pi*n+pi/3) + 2*sin(0.5*pi*n)');

% Overlay with a plotted version
hold on;
plot(n, x, 'LineWidth', 1.5, 'Color', 'red');
hold off;
