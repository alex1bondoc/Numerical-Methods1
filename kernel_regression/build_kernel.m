function [K] = build_kernel (X, f, f_param)
  # Construiti matricea K (matricea kernel-urilor) asa cum este
  # descrisa in enuntul temei pornind de la datele de intrare X
  # Functia de kernel este descrisa de parametrul f si foloseste f_param
  # ca al 3-lea parametru
  %initializam numarul de linii si matricea goala K
  n = size(X, 1);
  K = zeros(n,n);
  %creem matricea simetrica K cu ajutorul funtiei f (functiile de kernel), dupa cum ne este prezentat in fisa
  for i = 1: n
    for j = i:n
      K(i,j) = f(X(i,:), X(j,:), f_param);
      K(j,i) = K(i,j);
    end
  end
  
endfunction
