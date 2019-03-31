%RISULTATI_BIS function per visualizzare risultati provenienti dal metodo
% di bisezione per la ricerca degli zeri di equazioni non lineari
% Uso:
% risultati_bis(a,b,f,xv,slv,fxv)
%
% Dati di ingresso:
% a: estremo sinistro dell’intervallo
% b: estremo destro dell’intervallo
% f: funzione di cui cercare lo zero (inline function)
% xv: vettore contenente le iterate
% slv: vettore contenente le semilunghezze
% fxv: vettore contenente i corrispondenti residui
%
function [] = risultati_bis(a,b,f,xv,slv,fxv)
  xv=xv(:);
  slv=slv(:);
  fxv=fxv(:);
  n=length(xv);
  fprintf(’\nf: %s \tIntervallo: a=%g b=%g Bisezione \n\n’, ...
  formula(f),a,b);
  fprintf(’n \t x_n \t\t\t\t f(x_n) \t\t b_n-a_n\n’);
  fprintf(’%d\t %20.15f \t %10.2e \t %10.4e \n’, ...
  [(1:n);xv’;fxv’;slv’]);
end