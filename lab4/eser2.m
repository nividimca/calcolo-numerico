%====================================================================
% Andrea Favero 1125545
% esercizio 2.
% Modifica dello script per interpolazione con la forma di Newton
% Da usare per vedere che succede se si aumentano o si decrementano
% i punti di interpolazione.
% Necessita delle function polnewton e hornerN
%====================================================================
% Definisce la funzione
f=@(x) 1./(1+x.^2);

% Definisce l'intervallo [a,b]
a=-5; b=5;

for i = 5:2:15 % incremento sempre i di 2. Sono 6 cicli,
  % Definisce il numero di nodi
  n=i;

  % Definisce la tabulazione dei punti (ascisse equispaziate ed ordinate
  % come valori della funzione nei nodi definiti)
  x=linspace(a,b,n);
  y=feval(f,x); % == f(x)

  % Calcola i coefficienti del polinomio con la base di Newton usando
  % la function polnewton
  c = polnewton(x,y);

  % Grafici
  % Definisce le ascisse per i grafici (201 punti equispaziati)
  xgraf = linspace(a,b,201);

  % Valuta la funzione nelle 201 ascisse
  ygraf = feval(f,xgraf);

  yhorn = [];
  % Valuta il polinomio nelle 201 ascisse (ciclo for che usa
  % la function hornerN)
  for j = 1:201
      yhorn = [yhorn , hornerN(x, c, xgraf(j))];
  end

  yhorn = hornerN(x,c,xgraf);

  % creazione della figura con la funzione da approssimare,
  % i punti equispaziati e le diverse approssimazioni polinomiali
  % entrambi calcolati ad ogni ciclo
  if i == 5
    plot(xgraf, ygraf, 'k-');
    hold on;
  end
  scatter(x,y, 'o');
  plot(xgraf, yhorn, '--');
end
title('Funzione 1/(1+x^2) ed alcuni dei suoi polinomi di interpolazione');
hold off;