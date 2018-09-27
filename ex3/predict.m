function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

%add a column of 1's to X and it becomes a1
a1 = [ones(m, 1) X];

% multiply by theta1 and you have z2

z2 = a1 * Theta1';

% compute the sigmoid of z2 and add a column of 1s and it becomes a2

hyp = sigmoid(z2);
new_m = size(hyp, 1);
a2 = [ones(new_m, 1) hyp];

%multiply by theta2, compute sigmoid and you have a3

mult = a2 * Theta2';

a3 = sigmoid(mult);

% now use max to return 2 vectors

[v p] = max(a3, [], 2);







% =========================================================================


end
