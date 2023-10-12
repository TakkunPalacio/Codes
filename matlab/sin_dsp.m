
% Define the range of n values
n = 0:60;

% Calculate the wave values
x = sin(0.1*pi*n);

% Plot the wave using the stem function
stem(n, x);

% Label the axes
ylabel('x');
title('Waveform of x = sin(0.1*pi*n)');

% Change the marker size, color and fill
Hs = stem(n, x, 'b', 'filled');
Hs.MarkerSize = 4;
xlabel('n');
ylabel('x');
title('Waveform of x = sin(0.1*pi*n)');

% Overlay the graph with a plot function
hold on;
plot(n, x, 'r');
hold off;

