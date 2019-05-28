function [x,w,Itrap]=simpson_composta(N,a,b,f)
% FORMULA DI SIMPSON COMPOSTA.
% [x,w,Itrap]=simpson_composta(N,a,b,f)
% INPUT:
% N:    NUMERO APPLICAZIONI DELLA FORMULA SEMPLICE
% a, b: ESTREMI DI INTEGRAZIONE.
% f:    FUNZIONE INTEGRANDA
% OUTPUT:
% x:     NODI INTEGRAZIONE.
% w:     PESI INTEGRAZIONE (INCLUDE IL PASSO!).
% Itrap: VALORE APPROSSIMATO CALCOLATO CON LA FORMULA DI QUADRATURA 

h=(b-a)/(2*N);          % PASSO INTEGRAZIONE.
x=a:h:b; x=x';  %sbagliato sistemare        % NODI INTEGRAZIONE.
w=ones(2*N+1,1);        % PESI INTEGRAZIONE.
w(2:2:2*N,1) = 4;       %voglio 4 in tutte queste posizioni
w(3:2:2*N-1,1) = 2;     %voglio 2
w=w*h/3;

fx=feval(f,x);         %VALUTAZIONE DELLA FUNZIONE NEI NODI 
Itrap=w'*fx;           %CALCOLO DEL VALORE APPROSSIMATO DALLA FORMULA

