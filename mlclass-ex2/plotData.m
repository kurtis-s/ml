function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
hold on;
for p=1:length(y)
    if y(p) == 1
        display("plotting 1")
        display(X(p,1))
        display(X(p,2))
        plot(X(p, 1), X(p, 2), 'r.');
    else,
        display("plotting 2")
        display(X(p,1))
        display(X(p,2))
        plot(X(p, 1), X(p, 2), '.');
end
hold off;









% =========================================================================



hold off;

end
