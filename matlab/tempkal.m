deltaT = [ 6.5 12.5 17 21.5 26.5 30.5 ];
U = [ .27 .51 .66 .84 1.02 1.18 ]*1e-3;

y = deltaT;
x = U;

G = [ sum(x.^2) sum(x); sum(x) length(x) ];
h = [ sum(x.*y); sum(y) ];
a = inv(G)*h;
f = a(1)*x + a(2);
S = sum((f-y).^2); % Kvadratsumma
u = sqrt(diag(inv(G)) * S/(length(y) - length(a)));
resultat = [ a u ]
plot(x, y, '*', x, f);

% RESULTAT
% 1.0e+04 *
%  2.658085182109378 +- 0.028220597947465
% -0.000076370269308 +- 0.000022772582910