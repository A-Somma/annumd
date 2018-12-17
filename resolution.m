function y  =  resolution(r, n)

    b = zeros(1,(n-1));
    m = 2;
    h = 1/n;
    for i = 1:(n-1)
        b(i) = (h^2)*(r(i/n));
    end
    M = full(gallery('tridiag',(n-1),-1,2,-1));
    res = resochol(M, (n-1), b, m);
    y = [0 res 0];
end

