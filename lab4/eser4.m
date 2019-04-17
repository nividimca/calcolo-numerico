%====================================================================
% Andrea Favero 1125545
% esercizio 4.
% Modifica dello script interp
% Necessita delle function polnewton e hornerN
%====================================================================
% Definisce la funzione
f=@(x) 1./(1+x.^2);

% Definisce l'intervallo [a,b]
a=-5; b=5;

xgraf = linspace(a,b,201);
% Valuta la funzione nelle 201 ascisse
ygraf = feval(f,xgraf); %valore di f(x)

fid = fopen('risequis.txt', 'w');
fprintf(fid, 'Grado del polinomio \t Norma infinito errore\n');

%il for parte da 2 e finisce a 32 perché
%i polinomi devono avere grado n, con n = 1,...,31
%il grado n=1 ha due nodi, ... , il grado n = 31 ha 32 nodi
for i = 2:2:32 
  
  n=i;

  % Definisce la tabulazione dei punti (ascisse equispaziate ed ordinate
  % come valori della funzione nei nodi definiti)
  x=linspace(a,b,n);
  y=feval(f,x); % == f(x)

  % Calcola i coefficienti del polinomio con la base di Newton usando
  % la function polnewton
  c = polnewton(x,y);


  yhorn = [];
  % Valuta il polinomio nelle 201 ascisse (ciclo for che usa
  % la function hornerN)
  for j = 1:201
      yhorn = [yhorn , hornerN(x, c, xgraf(j))];
  end

  %equivalente al blocco soprastante
  %yhorn = hornerN(x,c,xgraf);
  
  E = ygraf - yhorn; %calcolo dell'errore di approssimazione
  
  norminf = norm(E, Inf); %norma infinito dell'errore
  
  fprintf(fid, '%d \t\t\t %1.2e\n', n, norminf);  
end
fprintf(fid, 'Andrea Favero 1125545\n', n, norminf);  
fclose(fid);