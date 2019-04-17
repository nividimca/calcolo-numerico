%====================================================================
% Andrea Favero 1125545
% Esercizio 7 da consegnare nel moodle:
% modifica di interp, si utilizzano polyval, polyfit e chebgauss
% testo consegna:
% Consegnare la igura (salvata in formato pdf) creata usando il comando subplot
% che contenga i seguenti due grafici: grafico della funzione di Runge, il suo
% interpolante calcolato su 32 nodi di Chebyshev, e i punti di interpolazione,
% e come secondo grafico il grafico dell'errore commesso. Il primo grafico deve
% avere titolo e legenda opportuni, il secondo deve avere come titolo il proprio
% nome, cognome e numero di matricola. 
%=====================================================================
% Definisce la funzione
f=@(x) 1./(1+x.^2);

% Definisce l'intervallo [a,b]
a=-5; b=5;

% Definisce il numero di nodi
n=32;

% Definisce la tabulazione dei punti utilizzando chebyshev
x=chebgauss(a,b,n);
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
legend("Punti", "Funzione", "Interpolante");
hold off;

% Creazione della figura che contiene la funzione errore
%funzione errore: E(x) = f(x) - P(x)
E = ygraf - yhorn;
subplot(2,1,2);
plot(xgraf, E, 'r-');
hold on;
plot([-5,5], [0,0], 'k-');
title('Andrea Favero 1125545');
print('-f1', 'Andrea_Favero_1125545', '-dpdf');
hold off;