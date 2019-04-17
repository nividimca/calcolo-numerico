%====================================================================
% Andrea Favero 1125545
% CHEBGAUSS calcola il vettore dei nodi di Chebyshev in un itervallo
% [a,b] utilizzando la seguente formula:
% x_i = (a+b)/2 + ((b-a)/2) * t_i
% con t_i = cos(((2i+1)/(2n+2))*pigreco)
% per i = 0, ..., n
%
% Dati di ingresso:
%   a     estremo sinistro intervallo
%   b     estremo destro intervallo
%   n     #di nodi di chebyshev da creare
%
% Dati in uscita:
%   xc    vettore contentente i nodi di chebyshev calcolati in [a,b]
%====================================================================
function xc = chebgauss(a,b,n)
  t = cos( ((2 * [0:n] + 1) * pi ) / (2 * n + 2) );
  xc = ( a + b ) * 0.5 + (b - a) * 0.5 * t;
  
  %altrimenti, è possibile anche scrivere in modo prolisso
  %xc = [];
  %for i = 0:n
  %  t = cos( ((2*i +1) * pi ) / (2*n + 2) );
  %  xc = [xc,( a + b ) * 0.5 + (b - a) * 0.5 * t];
  %end
end
