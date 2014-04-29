function [error_train, error_val] = ...
    learningCurveRandom(X, y, Xval, yval, lambda)
REPITITIONS = 50;
m = size(X, 1);

error_train = zeros(m, 1);
error_val   = zeros(m, 1);

    for j = 1:REPITITIONS,
        %Shuffle the vectors
        k = randperm(size(y));
        X = X(k,:);
        y = y(k,:);
        kval = randperm(size(yval));
        Xval = Xval(kval,:);
        yval = yval(kval,:);
       for i = 1:m
           % Compute train/cross validation errors using training examples 
           % X(1:i, :) and y(1:i), storing the result in 
           % error_train(i) and error_val(i)
           theta = trainLinearReg(X(1:i, :), y(1:i), lambda);
           error_train(i) = error_train(i) + linearRegCostFunction(X(1:i,:), y(1:i), theta, 0);
           error_val(i) = error_val(i) + linearRegCostFunction(Xval(1:i,:), yval(1:i), theta, 0);
       end
   end
   error_train = error_train/REPITITIONS;
   error_val = error_val/REPITITIONS;
% =========================================================================

end
