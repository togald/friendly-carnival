U = [.069 .182 .392 .460 .545 .757 .836 .891 .914 .936 .95 .96];
I = [.341 .304 .226 .203 .168 .094 .067 .051 .043 .036 .032 .029];

y = U;
x = I;

G = [ sum(x.^2) sum(x); sum(x) length(x) ];
h = [ sum(x.*y); sum(y) ];
a = inv(G)*h;
f = a(1)*x + a(2);
S = sum((f-y).^2); % Kvadratsumma
u = sqrt(diag(inv(G)) * S/(length(y) - length(a)));
resultat = [ a u ]
plot(x, y, '*', x, f);

% RESULTAT
% -2.832851256090184 +- 0.020378789683061
%  1.033963741850646 +- 0.003481046849621
