function [L] = cholesky (A)
    # TO DO: realizati descompunerea cholesky pentru o matrice
    # positiv definita
    n = size(A,1);
    L = zeros(n);
    %calculam matricea inferior triunghiulara din cholesky
    for i = 1:n
        for j = 1: i-1
            S = 0
            for k = 1: j-1
                S = S + L(i,k) * L(j,k);
            end
            L(i,j) = (A(i,j)-S)/L(j,j);
        end
        S = 0;
        for j = 1: i-1
            S = S + L(i,j) * L(i,j);
        end
        L(i,i) = sqrt(A(i,i)-S);
    end
endfunction
