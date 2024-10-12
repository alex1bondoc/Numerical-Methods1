%functie dupa pseudocodul din fisa
function [x] = conjugate_gradient (A, b, x0, tol, max_iter) 
  # Implementati algoritmul pentru metoda gradientului conjugat
  x = x0;
  r = b - A * x;
  v = r;
  rsold = r' * r;

  for i = 1:max_iter
    Av = A*v;
    alpha  = rsold / (v' * Av);
    x = x + alpha *v;
    r  = r - alpha *Av;
    if sqrt(r' * r) < tol
      return ;
    end
    rsnew = r' * r;
    v = r+ (rsnew /rsold) * v;
    rsold = rsnew;
  end
endfunction