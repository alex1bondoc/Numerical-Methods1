% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)
    % probabilities = zeros(1, 1);
    %initializam m si n pentru dimensiunile matricei
    [m,n] = size(X);

    %initializam o variabila auxiliara pentru formula din fisa
    aux = (2 * pi) ^ (-n/2) * det(variances) ^ (-0.5);

    %initializam cu zerouri vectorul de probabilitati                          
    probabilities = zeros(m,1);

    %calculam inversa matricei
    inversa = inv(variances);

    %calculam functia probabilitati
    for i = 1:m
        val = X(i,:) - mean_values;
        probabilities(i) = aux * exp(-0.5 * val * inversa * val');
    end
endfunction
