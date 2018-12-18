function L  =  choleski(A, n, m)
    %CHOLESKI
    L = zeros(n, n);
    L(1,1) = sqrt(m);
    
    for i = 2:n
       L(i,1) = A(i,1)/L(1,1);
    end
    
    for k = 2:n
        somme = 0;
        for j = 1:(k-1)
            somme = somme + L(k, j)^2;
        end
        L(k,k) = sqrt(m-somme);
        
        for i = (k+1):n
            if(i>k+m)
                break;
            end
            somme = 0;
            for j = 1:(k-1)
                somme = somme + L(i,j)*L(k,j);
            end
            L(i,k) = (A(i,k)-somme)/L(k,k);
        end
    end
    
end