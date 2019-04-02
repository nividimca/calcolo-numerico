% POLNEWTON Calcola i coefficienti del polinomio interpolatore
% utilizzando la forma di Newton con le differenze divise
%
% Uso:
% c = polnewton (x,y)
%
% Dati di ingresso:
% x     vettore dei nodi
% y     vettore dei valori della funzione da interpolare nei nodi
%
% Dati di uscita:
% c     vettore colonna dei coefficienti ordinati per indici
%       crescenti (c_0, c_1, ... )
function c = polnewton (x,y)

    n1 = length(x);
    if n1 ~= length(y)
        error('La tabulazione non contiene lo stesso numero di componenti. Stop')
    end
    
    for i = 1:n1
       ctab(i,1) = y(i);
    end
    for j = 2:n1
       for i = 1:(n1-j+1)
           ctab(i,j) = (ctab(i+1,j-1)-ctab(i,j-1))/(x(i+j-1)-x(i));
       end
    end
    c = ctab(1,:);
end

