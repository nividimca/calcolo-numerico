% Andrea Favero 1125545
%esser6 Script per tracciare il grafico della
%        funzione g(x) = exp(-2x)+x^2-0.181734 e della sua bisetrice
%       in un intervallo [a,b] per visualizzare i due punti fissi di x = g(x)


g = inline("exp(-2.*x)+x.^2-0.181734") % Def g(x)
x = linspace(-1, 2, 1000) % Def il vettore delle ascisse
y = g(x)

plot(x, y)  % stampa g(x)
hold on
% Def il vettore delle ascisse
plot(x, x)  % stampa la bisettrice del primo e del secondo quadrante
plot([a,b],[0,0],'k-') %stampa l'asse delle ascisse
title('Andrea Favero 1125545')
print("-f1", "eser6", "-dpdf")
hold off

% L'equazione data ha 2 zeri, alpha1 ed alpha2, con alpha1 < alpha2.
% alpha1 rappresenta un punto di minimo assoluto della funzione g(x)
% e perciò il metodo del punto fisso non ci permette di calcolarlo.