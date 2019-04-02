% DA TERMINARE
%-----------------------------------------------------------------------
% HORNERN 
%
% Uso:
% u = horner(x,c,xstar)
%
% Dati di ingresso:
% x     vettore dei 
% y     vettore dei 
%
% Dati di uscita:
% u     

function [u] = hornerN(x,c,xstar)
  n1 = legth(x);
  if n1 ~= length(c)
     error('Errore. Inconsistente numero di componenti. Stop.'); 
  end
  u = c(n1);
  
  for j = n1-1 : 1 : step -1
      
  end
end


%nell'essercizio per casa uasre la norma infinito
%norm(v,inf)
%fid = fopen('tabellaini
