function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the
%   cost of using theta as the parameter for linear regression to fit the
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%



hypothesis = X * theta;
error = hypothesis - y;
error_sqr = error .^ 2;



h = X * theta;
error = (h - y);
transpose = X' * error;
theta_change = transpose * (1 / m);

theta(1) = 0;
J_unreg = sum(error_sqr) * (1 / (2 * m));
theta_sqr = theta .^2;
theta_reg = sum(theta_sqr) * (lambda / (2 * m));

J = J_unreg + theta_reg;

grad_reg = theta * (lambda / m);


grad = theta_change + grad_reg;




% =========================================================================

grad = grad(:);

end
