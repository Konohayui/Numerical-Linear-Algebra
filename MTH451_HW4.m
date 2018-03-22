%% Problem 1
% Base the information from the question, 
% we can obtain the following matrix M
% and b
M = [1 0 0 0;...  % row 1
     0 1 0 0;...  % row 2
     0 0 1 0;...  % row 3
    -1 0 1 0;...  % row 4
     0 0 1 -1;... % row 5
    -1 0 0 1;...  % rwo 6
    0 1 0 -1];    % row 7

b = [360; 422; 501; 143; 107; 32; 32];
% solve the system Ax = b
x = M\b;
% get the residual r = b - Ax
r = b - M*x;

%% Problem 2 (a)
X = (-1:1/1001:1)';
A = [X.^0 X.^1 X.^2 X.^3 X.^4]; % construct A
[Q R] = qr(A,0); % obtain Q hat and R hat

%% Problem 2 (b)
for i = 1:length(X)
    Q(i,1) = 1; % normalize Q hat
end
plot(X, Q);
axis([-1, 1, -0.2, 0.2]);

%% Problem 2 (c)

%% Problem 2 (d)

%% Problem 2 (e)
