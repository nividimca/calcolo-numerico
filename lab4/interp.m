%====================================================================
% Script per interpolazione con la forma di Newton
% Necessita delle function polnewton e hornerN
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

% Calcola i coefficienti del polinomio con la base di Newton usando
% la function polnewton
c = polnewton(x,y);

% Grafici
% Definisce le ascisse per i grafici (201 punti equispaziati)
xgraf = linspace(a,b,201);

% Valuta la funzione nelle 201 ascisse
ygraf = feval(f,xgraf);

yhorn = [];
% Valuta il polinomio nelle 201 ascisse (ciclo for che usa
% la function hornerN)
for i = 1:201
    yhorn = [yhorn , hornerN(x, c, xgraf(i))];
end

%yhorn = hornerN(x,c,xgraf);

% Creazione della figura che contiene i punti della tabulazione
% la rappresentazione della funzione originale
% la rappresentazione del polinomio interpolante
scatter(x,y, 'r');
hold on;
plot(xgraf, ygraf, 'k-');
plot(xgraf, yhorn, 'r--');
title('Polinomio interpolante e funzione 1/(1+x^2)');
legend("Punti", "Funzione", "Interpolante");
hold off;

% Creazione della figura che contiene la funzione errore
%funzione errore: E(x) = f(x) - P(x)
E = ygraf - yhorn;
figure(2);
plot(xgraf, E, 'r-');
hold on;
plot([-5,5], [0,0], 'k-');
title('Funzione errore E(x) = f(x) - P(x)');
hold off;