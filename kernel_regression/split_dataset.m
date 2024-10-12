function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  # TO DO: împarte setul de date în 2 seturi: 
  # un set de training si un set de test,
  # ambele reprezentate printr-o matrice de features un vector de clase
  # percentage este un parametru considerat intre 0 si 1
  n = size(X, 1);
  %calculam numarul de linii pentru antrenament
  train = round(n * percentage);
  %creem X si y pentru antrenament si pentru predictii
  X_train = X(1:train, :);
  y_train = y(1:train, :);
  X_pred = X(train+1 : end, :);
  y_pred = y(train+1 : end, :);
endfunction
