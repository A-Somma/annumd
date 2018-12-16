
function x  =  resochol(A, n, b, m)
    import choleski.*
    import remontee_2.*
    import descente.*
    %RESOCHOL
    L = choleski(A, n, m);
    y = descente(L, n, b, m);
    x = remontee_2(transpose(L), n, y, m);
end
