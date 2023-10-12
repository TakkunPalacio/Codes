% Define the range of n values
n = 0:10;

% Calculate the corresponding x values
x = 0.9.^n;

% Create a figure with two subplots
figure;
subplot(1,2,1);
stem(n, x);
xlabel('n');
ylabel('x');
title('Exponential Sequence with x = 0.9^n');

% Shift the sequence to the left by 5 times
x_shifted = [zeros(1,5), x(1:end-5)];

% Plot the shifted sequence in the second subplot
subplot(1,2,2);
stem(n, x_shifted);
xlabel('n');
ylabel('x');
title('Exponential Sequence with x = 0.9^(n-5)');

