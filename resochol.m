
function x  =  resochol(A, n, b, m)
    %RESOCHOL
    L = choleski(A, n, m);
    y = descente(L, n, b, m);
    x = remontee(transpose(L), n, y, m);
end
