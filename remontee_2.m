function X  =  remontee_2(A, n, b, m)

    X = zeros(1,n);
    X(n) = b(n)/A(n,n);
    for i = n-1:-1:1
        somme = 0;
        for j = n :-1:i
            somme = somme + (A(i,j)*X(j));
        end
        X(i) = (b(i)-somme)/A(i,i);
    end
    
end

