function X  =  descente(A, n, b, m)
    %DESCENTE
    X = zeros(1,n);
    X(1) = b(1)/A(1,1);
    for i = 2:n
        somme = 0;
        for j = 1:i
            somme = somme + (A(i,j)*X(j));
        end
        X(i) = (b(i)-somme)/A(i,i);
    end
end
