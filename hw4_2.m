X = [ -2, 1,  4,  6,  5,  3,  6, 2 ; 
       9, 3,  2, -1, -4, -2, -4, 5 ; 
       0, 7, -5,  3,  2, -3,  4, 6 ];

% mean vector calculation
m = mean(X);
disp(m)
% scatter matrix calculation
S = (X-m)*(X-m)';

% covariance matrix calculation
C = cov(S);
disp(C)

% eigen value and vector for scatter matrix
[S_vec , S_val ] = eig(S);

% eigen value and vector for covariance matrix
[C_vec , C_val ] = eig(C);

disp(C_val); disp(C_vec)