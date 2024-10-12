function [a] = get_prediction_params(K, y, lambda)   
    n = size(K, 1);
    K_reg = K + lambda * eye(n);
    
    L = chol(K_reg, 'lower'); 
    %LU * x = y rezolvare mai simpla prin factorizare LU
    z = SIT(L, y);
    
    a = SST(L', z);
end
%solutie sistem inferior triunghilar dupa modelul de la laborator
function x = SIT(L, b)
    % Solves L*x = b for x, where L is a lower triangular matrix
    n = length(b);
    x = zeros(n, 1);
    for i = 1:n
        x(i) = (b(i) - L(i, 1:i-1) * x(1:i-1)) / L(i, i);
    end
end
%solutie sistem superior triunghiular dupa modelul de la laborator 
function x = SST(U, b)
    % Solves U*x = b for x, where U is an upper triangular matrix
    n = length(b);
    x = zeros(n, 1);
    for i = n:-1:1
        x(i) = (b(i) - U(i, i+1:n) * x(i+1:n)) / U(i, i);
    end
end