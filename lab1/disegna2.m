% Andrea Favero 1125545
%disegna2: Script per tracciare il grafico di due
%        funzioni in un intervallo [a,b]
%
% Dati da fornire in ingresso:
%   funs1:   stringa contenente l'espressione
%           della prima funzione (attenzione alle operazioni
%           che necessitano del . (punto)
%   funs2:   stringa contenente l'espressione
%           della seconda funzione 
%   a:      primo estremo
%   b:      secondo estremo
%   n:      numero di nodi equidistanti dell'intervallo
%           in cui vengono valutate le funzioni 

% Parte di ingresso dati
a = input(' Inserire l''estremo sinistro: ');
b = input(' Inserire l''estremo destro: ');
funs1 = input(' Inserire la stringa di f1(x): ');
funs2 = input(' Inserire la stringa di f2(x): ');
n = input(' Inserire il numero di punti: ');
%
disp(' Estremo sinistro'); disp(a)
disp(' Estremo destro'); disp(b)
disp(' Numero di punti'); disp(n)
fun1 = inline(funs1);
fun2 = inline(funs2);
disp(' Funzione f1(x)'); disp(fun1);
disp(' Funzione f2(x)'); disp(fun2);
%
% Definisce il vettore delle ascisse
x = linspace(a, b, n);
%
% Definisce i vettori delle ordinate
y1 = fun1(x);
y2 = fun2(x);
%
% Disegna la curva f1(x) nell'intervallo [a,b]
plot(x,y1)
hold on
plot(x,y2) % Disegna la curva f1(x) nell'intervallo [a,b]
% Disegna l'asse x nell'intervallo [a,b]
plot([a,b],[0,0],'k-')
title('Andrea Favero 1125545')
hold off