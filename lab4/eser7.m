%====================================================================
% Andrea Favero 1125545
% Esercizio 7:
% modifica di interp, si utilizzano polyval e polyfit e chebgauss
%====================================================================
% Definisce la funzione
f=@(x) 1./(1+x.^2);

% Definisce l'intervallo [a,b]
a=-5; b=5;

% Definisce il numero di nodi
n=11;

% Definisce la tabulazione dei punti (ascisse equispaziate ed ordinate
% come valori della funzione nei nodi definiti)
x=linspace(a,b,n);
y=feval(f,x); % == f(x)

% Calcola i coefficienti del polinomio 
c = polyfit(x,y,n);

% Grafici
% Definisce le ascisse per i grafici (201 punti equispaziati)
xgraf = linspace(a,b,201);

% Valuta la funzione nelle 201 ascisse
ygraf = feval(f,xgraf);


% Valuta il polinomio
yhorn = polyval(c,xgraf);

% Creazione della figura che contiene i punti della tabulazione
% la rappresentazione della funzione originale
% la rappresentazione del polinomio interpolante
subplot(2,1,1);
scatter(x,y, 'r');
hold on;
plot(xgraf, ygraf, 'k-');
plot(xgraf, yhorn, 'r--');
title('Polinomio interpolante e funzione 1/(1+x^2)');
legend('Punti', 'Funzione', 'Interpolante');
hold off;

% Creazione della figura che contiene la funzione errore
%funzione errore: E(x) = f(x) - P(x)
E = ygraf - yhorn;
subplot(2,1,2);
plot(xgraf, E, 'r-');
hold on;
plot([-5,5], [0,0], 'k-');
title('Funzione errore E(x) = f(x) - P(x)');
print('-f1', 'runge_chebyshe_polifit_polyval', '-dpdf');
hold off;