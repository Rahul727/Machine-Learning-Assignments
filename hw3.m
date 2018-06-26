load('hw1data1.mat')
input_var = x';
target_var = y';
% disp(input_var);
% disp(target_var);

len = length(target_var);
% polynomial with degree 1 
X = [ones(len, 1), input_var];
calculation(X, input_var, target_var, 1)
 
% polynomial with degree 3
X = [ones(len, 1), input_var, input_var.^2, input_var.^3];
calculation(X, input_var, target_var, 3)
 
% polynomial with degree 5
X = [ones(len, 1), input_var, input_var.^2, input_var.^3, input_var.^4, input_var.^5];
calculation(X, input_var, target_var, 5)
 
% polynomial with degree 7
X = [ones(len, 1), input_var, input_var.^2, input_var.^3, input_var.^4, input_var.^5, input_var.^6, input_var.^7];
calculation(X, input_var, target_var, 7)
 
% function to calculate coefficient values
function calculation(matx, input_var, target_var, order)
   % equation:  a = (Xt * X)^-1 * Xt * y
    parameters = inv(matx'*matx) * matx' * target_var;
    y = matx * parameters;
    disp(parameters)
    y_2 = sum((target_var - y).^2) ; 
    disp(y_2)
    plotting(input_var, target_var, y, order)
end
 
% function to plot figures
function plotting(input_var1, target_var1, y1, degree)
    sub = floor(degree/2) + 1;
    subplot(2,2,sub)
    plot(input_var1, target_var1, 'x')
    hold on
    plot(input_var1, y1, 'red')
    title(degree)
end
