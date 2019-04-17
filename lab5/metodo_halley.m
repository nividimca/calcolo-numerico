% Andrea Favero 1125545
%---------------------------------------------------------------
% function [xv, fxv,n,flag]= metodo_halley(f,f1,f2,x0, toll, nmax)
% Metodo di Halley
%----------------------------------------------------------------
% Dati in ingresso:
%     f: funzione della quale si cerca una radice in [a,b]
%     f1: derivata prima di f
%     f1: derivata seconda di f
%     x0: valore iniziale
%     toll: tolleranza richiesta per il valore assoluto della differenza
%           di due iterate successive.
%     nmax: numero massimo di iterazioni permesse
% Dati in uscita:
%     xv: vettore contenente le iterate (inclusa quella iniziale)
%     fxv: vettore contenente le valutazioni di f in ogni elemento di xv
%     n: numero di iterazioni effettuate (lunghezza vettore xv -1 )
%     flag: se flag = 
%       1 la derivata prima ha denominatore nullo
%       2 il numero di iterazioni e' maggiore di nmax
%       0 altrimenti
%----------------------------------------------------------------
function [xv,fxv,n,flag]= metodo_halley(f,f1,f2,x0, toll, nmax)
  n = 0;
  flag = 0;
  x = x0;
  xv = [x0];
  fxv = [f(x0)];
  
  scarto = toll + 1;        %valore fittizio di inizializzazione
  
  while scarto >= toll && n < nmax && flag == 0
  
    xold  = x;
    fxold = f(xold);
    
    den = 2 * (f1(xold)^2) - fxold * f2(xold);
    
    if den == 0
      flag = 1;
    else
      x = xold -(2 * fxold * f1(xold) ) / den;
      xv = [xv, x];
    
      fx = f(x);
      fxv = [fxv, fx];
      
      scarto = abs(x - xold);
      n = n + 1;
    end
    
  end
  
  if n >= nmax
      flag = 2;
  end
  
  n = length(xv) - 1;
  
end


