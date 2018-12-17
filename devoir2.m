%%DEVOIR 2

%% Question 2b)


%Posons y(x) = sin(x*pi)
%Alors y"(x) = -(pi^2)*(sin(x*pi))
%Et donc r(x) = (pi^2)*(sin(x*pi))
y = @(x) sin((x)*(pi));
r = @(x) ((pi)^2)*(sin((x)*(pi)));


n1 = 3;
n2 = 4;
x1 = linspace(0, 1, n1+1);
x2 = linspace(0, 1, n2+1);
reso1 = resolution(r, n1);
reso2 = resolution(r, n2);

%graph
figure(1);
plot(x1, reso1);
hold on;
plot(x2, reso2);
fplot(y, [0 1]);

grid on; title("Courbes des approximations: y(x) = sin(pi*x)");
xlabel("x");
ylabel("y(x)");
legend({'resolution pour h = 1/3','resolution pour h = 1/4', 'y(x) = sin(pi*x)'},...
        'Location','south','FontSize',12,'FontWeight','bold')
hold off;

%% Question 2c)
n = 3;
ni = logspace(1, n, n);
hi = ni.^(-1);
Eh = arrayfun(@maxErreur, ni);

%graph
figure(2);
loglog(hi, Eh);
hold on;

grid on; title("Courbe de l'erreur en fonction de h");
xlabel("hi");
ylabel("E(h)");
legend({'Max Erreur'},'Location','north', ...
    'FontSize',12,'FontWeight','bold')
hold off;


%% Definition de fonctions locales

function maxErr = maxErreur(n)
    r = @(x) ((pi)^2)*(sin((x)*(pi)));
    y = @(x) sin((x)*(pi));
    xi = linspace(0, 1, n+1);
    yi = resolution(r, n);
    yx = arrayfun(y, xi);
    maxErr = max(yi-yx);
end
