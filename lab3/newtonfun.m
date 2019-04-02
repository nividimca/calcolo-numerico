% Andrea Favero
%---------------------------------------------------------------
% function [xv,scarti,n,flag]=newtonfun(f,df,x0,toll,nmax)
% NEWTONFUN Metodo di Newton
% Uso: [xv,scarti,n,flag]=newtonfun(f,df,x0,toll,nmax)
%----------------------------------------------------------------
% Dati in ingresso:
%     f: funzione della quale si cerca una radice in [a,b]
%     df: derivata prima di f
%     x0: approssimazione iniziale
%     toll: tolleranza
%     nmax: numero massimo di iterazioni
% Dati in uscita:
%     xv: vettore contenente le iterate
%     scarti: vettore degli scarti successivi
%     n: numero di iterazioni effettuate
%     flag: se flag = 1 la derivata prima si e' annullata
%----------------------------------------------------------------
function [xv,scarti,n,flag]=newtonfun(f,df,x0,toll,nmax)
  xv = scarti = [];
  n = flag = 0;
  x = x0;
  
  while abs(diff) >= toll && n < nmax && !flag
    
    fx = f(x);
    dfx = df(x);
    if dfx == 0
      flag = 1;
    else
      diff = -fx/dfx;
      x = x + diff;
      xv = [xv; x];
      scarti = [scarti; x];
      n = n + 1;
    end
    
  end
  
end
