function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
% Er1 = 0;
% Er2 = 0;
% temp0=0;
% temp1=0;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
%     for i = 1:m
%         Er1 = Er1 + theta' * X(i,:)' - y(i);
%     end
%     
%     % X(i, 2) : 2是第二列元素，代表x的值
%     for i = 1:m
%         Er2 = Er2+ (theta' * X(i,:)'-y(i)) * X(i, 2);
%     end
    % Calculate the theta0 && theta1
%     temp0 = theta(1,:) - alpha*1/m*(Er1);
%     temp1 = theta(2,:) - alpha*1/m*(Er2);
    h = X* theta;
    e = h - y;
    theta = theta - alpha/m* X'*e;

%     theta(1,:) = temp0;
%     theta(2,:) = temp1;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end
