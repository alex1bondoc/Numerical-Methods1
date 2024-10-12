function invA = get_lower_inverse(A)
    n = length(A);
    Ae = [A, eye(n)];
    for p = [1 : n]
        % Folosim GPP pentru ca e mai stabil decat alegerea unui
        [piv, l_piv] = max(abs(Ae(p:n, p)));
        l_piv = l_piv + p - 1;
        temp = Ae(l_piv, :);
        Ae(l_piv,:) = Ae(p, :);
        Ae(p, :) = temp;
        %obtinem 0 pe diagonala principala a maticei
        if (Ae(p, p) == 0)
            b = inf;
            return;
        end
        Ae(p, :) /= Ae(p, p);
        for l = 1 : n
            if l != p
                Ae(l, :) -= Ae(l, p) * Ae(p, :);
            end
        end
    end
    invA = Ae(:, n+1:2*n);
end