%====================================================================
% Andrea Favero 1125545
% modifica dell'esercizio 4. Utilizza i nodi chebyshev
% Modifica dello script interp
% Necessita delle function chebgauss e hornerN
%====================================================================
% Definisce la funzione
f=@(x) 1./(1+x.^2);

% Definisce l'intervallo [a,b]
a=-5; b=5;

xgraf = linspace(a,b,201);
% Valuta la funzione nelle 201 ascisse
ygraf = feval(f,xgraf); %valore di f(x)

fid = fopen('risCheb.txt', 'w');
fprintf(fid, "Grado del polinomio \t Norma infinito errore\n");

for i = 2:2:32 
  
  n=i;

  % calcolo dei nodi di chebyshev
  x=chebgauss(a,b,n);
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
  
  fprintf(fid, "%d \t\t\t %1.2e\n", n, norminf);
end
fprintf(fid, "Andrea Favero 1125545\n", n, norminf);  
fclose(fid);