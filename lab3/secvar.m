% Andrea Favero
%----------------------------------------------------------------
%SECVAR Metodo della secante variabile per equazione non lineare
%
% Uso:
% [xv, scarti, n] = secvar(f, x0, x1, toll, nmax)
%
% Dati di ingresso:
% f: funzione
% x0: prima iterata
% x1: seconda iterata
% toll: tolleranza richiesta per il valore assoluto
% tra due iterate successive (scarto)
% nmax: massimo numero di iterate permesse
%
% Dati di uscita:
% xv: vettore contenente le iterate
% scarti: vettore contenente i corrispondenti scarti
% n: numero di iterate della successione
%----------------------------------------------------------------
function [xv, scarti, n] = secvar(f, x0, x1, toll, nmax)
  
  xv = [x0, x1];
  scarti = [];
  
  xold = x0;
  x = x1;
  fold = f(xold);
  scarto = toll + 1;
  n = 1;
  
  while abs(scarto) >= toll && n < nmax
    scarto = x - xold;
    scarti = [scarti; scarto];
    
    fx = f(x);
    diff = -f(x) / ( (fx - fold ) / (scarto) );
    xold = x;
    x = x + diff;
    
    xv = [xv, x];
    
    fold = fx;
    n = n + 1;
  end
end
