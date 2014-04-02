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
admitted = X(find(y==1), :);
not_admitted = X(find(y==0), :);
plot(admitted(:,1), admitted(:,2), '+k', not_admitted(:,1), not_admitted(:,2), 'ok', 'markerfacecolor', 'y');
% =========================================================================



hold off;

end
