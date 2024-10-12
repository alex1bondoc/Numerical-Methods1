% This function estimates the parameters of a Gaussian distribution using the data in X.
function [mean_values variances] = estimate_gaussian(X)
    % mean_values = zeros(1,1);
    % variances = zeros(1,1);
    % creaza un vector care are pe fiecare linie media aritmetica
    mean_values = mean(X, 1);
    %folosim formula din fisa temei
    variances = ((X - mean_values)' * (X - mean_values)) / (size(X, 1) - 1);
endfunction
