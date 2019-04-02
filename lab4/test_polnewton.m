%====================================================================
% Script per testare la correttezza della function
% polnewton 
%====================================================================
% Definisce la funzione
f=@(x) 1./(1+x.^2);

% Definisce l'intervallo [a,b]
a=-5; b=5;

% Definisce il numero di nodi
n=5;

% Definisce la tabulazione dei punti (ascisse equispaziate ed ordinate
% come valori della funzione nei nodi definiti)
x=linspace(a,b,n);
y=feval(f,x);

% Calcola i coefficienti del polinomio con la base di Newton usando
% la function polnewton
c = polnewton (x,y)



%polyfit e' un comando che nasce per fare approssimazione
%non interpolazione

