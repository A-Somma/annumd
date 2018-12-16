function X  =  remontee(A, n, b, m)
    %REMONTEE
    X = bzeros(1,n);
    X(n) = X(n)/A(1,1);
    for i = (n-1):-1:1
        somme = 0;
        for j = (i+1):n
            somme = somme + A(i,j)*X(j);
        end
        X(i) = (X(i)-somme)/A(i,i);
    end            
end
    