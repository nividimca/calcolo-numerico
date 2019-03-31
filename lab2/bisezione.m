% Andrea Favero 1125545
% algoritmo prende spunto da quello a pag 70 di:
% "Calcolo Numerico metodi ed algoritmi" 4 ed. di Michela Redivo Zaglia.

% bisezione.m Metodo di Bisezione
%
% Uso: [xv, slv, fxv, n] = bisezione (f, a, b, toll, nmax)
%
% Dati di ingresso:
%   f:	funzione (inline function)
%	  a:	estremo sinistro
%	  b:	estremo destro
%	  toll:	tolleranza richiesta per il test di arresto
%      (semiampiezza dell’intervallo/residuo)
%	  nmax:	massimo indice dell’iterata permesso
%
% Dati di uscita:
%	xv:	vettore contenente le iterate
%	slv:	vettore contenente le semilunghezze degli intervalli
%	fxv:	vettore contenente i corrispondenti residui
%	n:	indice dell’iterata finale calcolata
function [xv, slv, fxv, n] = bisezione (f, a, b, toll, nmax)

  fa = f(a);
  fb = f(b);
  
  if fa * fb > 0
    error('Il metodo di bisezione non può essere applicato');
  end
  
  n = -1; % #iterazioni che il metodo effettua
  amp = toll +1; %Ampiezza intervallo, valore fittizio per inizializzazione 
  
  xv = []; slv = []; fxv = [];
  
  while amp >= toll && n < nmax
    n++;
    amp = abs(b-a);
    x = a + amp * 0.5;
    fx = f(x);
  
    if fa * fx < 0
      b = x;
    elseif fa * fx > 0
      a = x;
      fa = fx;
    else
      amp = 0;
    end
    
    xv(n+1) = x;
    slv(n+1) = amp * 0.5;
    fxv(n+1) = f(x);
  end
end