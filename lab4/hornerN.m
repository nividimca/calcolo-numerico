% Andrea Favero 1125545
% HORNERN Calcola il valore del polinomio interpolatore in x^*
% utilizzando la forma di Newton e l'algoritmo di Horner
%
% Uso:
% fxstar = hornerN (x,c,xstar)
%
% Dati di ingresso:
% x vettore dei nodi
% c vettore dei coefficienti della forma di Newton
% ordinati per indici crescenti (c_0, c_1, ... )
% xstar valore in cui si vuole valutare il polinomio
%
% Dati di uscita:
% fxstar valore di P(x^*)

function fxstar = hornerN (x,c,xstar)
  n1 = length(x);
  if n1 ~= length(c)
     error('Errore. Inconsistente numero di componenti. Stop.'); 
  end
  fxstar = c(n1);
  
  for j = n1-1 : -1 : 1 %metto -1 perch� faccio step di -1 da 8 fino a 1
      fxstar = fxstar .* (xstar - x(j)) + c(j);
  end
end
