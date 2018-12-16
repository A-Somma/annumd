import choleski.*
import remontee_2.*
import descente.*

%% Numero 1

n=3;
m=2;
M = [2 -1 0; -1 2 -1; 0 -1 2];
b = [1 1 1];
x = resochol(M, n, b, m);
disp(M);
disp(x);
