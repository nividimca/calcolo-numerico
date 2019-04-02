% Andrea Favero 1125545
% esercizio4 foglio del terzo laboratorio

exprf = input('Inserire la funzione di cui si vuole calcolare uno zero: ');
x0 = input('Inserire x0: '); %0.5
x1 = input('Inserire x1: '); %1.0
toll = input('Inserire la tolleranza: ');
nmax = input('Inserire il numero massimo di iterazioni effettuabili: ');

f = inline(exprf);

x = linspace(x0, x1, 1000);
y = f(x);
plot(x,y);
hold on;
grid on;  %visualizza una griglia nel grafico
plot([x0,x1],[0,0],'k-'); % Disegna l'asse x nell'intervallo [a,b]
title('Andrea Favero 1125545');
print("-f1", "grafico", "-dpdf")
hold off;

[xv, scarti, n] = secvar(f, x0, x1, toll, nmax);

if n > 0 && n < nmax
  disp(['Ultima soluzione approssimata calcolata: ', num2str(xv(n))]);
  disp(['Ultimo scarto calcolata: ', num2str(scarti(n-2))]);
  residuo = f(xv(n));
  disp(['Ultimo residuo calcolato: ', num2str(residuo)]);
  disp(['Indice dell''ultima iterata calcolata: ', num2str(n-1)]);
  
  figure(2) 
  %iter = (n-2);
  %semilogy(1:iter, abs(scarti),'m*-');
  semilogy(n-2, abs(scarti),'m*-');
  hold on
  grid on;
  title('Andrea Favero 1125545');
  xlabel('iterazioni');
  ylabel('scarto');
  legend('Secante');
  print("-f2", "graficoresidui", "-dpdf")
  hold off;
  
  %Stampa a video dei risultati mediante un ciclo for
  fprintf('\n [n]: %2.0f \t [xv]: %10.15f: ',0,xv(1));
  for k=2:n-2
  fprintf('\n [n]: %2.0f \t [xv]: %10.15f \t [scarti]: %10.2e',k,xv(k),scarti(k-1));
  end
  fprintf('\n [n]: %2.0f \t [xv]: %10.15f \t [scarti]: %10.2e',n-1,xv(n-1),scarti(n-2));
  fprintf('\n [n]: %2.0f \t [xv]: %10.15f ',n,xv(n));
  fprintf('\n');
  
elseif n == nmax
  error('errore, lo script ha effettuato n = nmax iterazioni\n');
end

%Inserire la funzione di cui si vuole calcolare uno zero: '1-x-e.^(-2*x)'
%Inserire x0: 0.5
%Inserire x1: 1
%Inserire la tolleranza: 1e-8
%Inserire il numero massimo di iterazioni effettuabili: 100
%Ultima soluzione approssimata calcolata: 0.79681
%Ultimo scarto calcolata: 8.4537e-07
%Ultimo residuo calcolato: -8.3267e-17
%Indice dell'ultima iterata calcolata: 7
