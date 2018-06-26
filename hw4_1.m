% Given data sets
X_p = [ 4,2,2,3,4,6,3,8; 1,4,3,6,4,2,2,3; 0,1,1,0,-1,0,1,0];   
X_n = [ 9,6,9,8,10;      10,8,5,7,8;      1,0,0,1,-1];

% calculating mean value for classes
mean_p = mean(X_p,2); 
mean_n = mean(X_n,2); 

% calculating within class scatter matrix
for p = mean_p
    Sw_p = (X_p - p)*(X_p - p)';
end
for n = mean_n
    Sw_n = (X_n - n)*(X_n - n)';
end
%disp(Sw_p); disp(Sw_n)

% calculating total within class scatter
Sw = Sw_p + Sw_n;
disp(Sw)

% mean value of total mean of both class
m = (mean_p + mean_n)/2;

% calculating between class scatter matrix
for a = mean_p
    Sb = (a-m)*(a-m)' ;
end
disp(Sb)

% finding eigen values and eigen vectors
[eig_vec, eig_val] = eig(Sw, Sb);

%disp(eig_val)
%disp(eig_vec)