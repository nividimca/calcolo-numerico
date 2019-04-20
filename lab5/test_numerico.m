%====================================================================
% Andrea Favero 1125545
% Script di test per il Metodo di Halley
%====================================================================
disp('METODO DI HALLEY');
disp(' ');
f = @(x) x.^2 -1 + exp(-x);
f1 = @(x) 2 * x - exp(-x);
f2 = @(x) 2 + exp(-x);
x0 = 0.5;
toll = 10e-10;
nmax = 50;

[xv,fxv,n,flag] = metodo_halley(f,f1,f2,x0, toll, nmax);
% n = length(xv) -1, visto che xv contiene anche x0, che non è stato ottenuto iterando
% ed n è il contatore delle iterazioni effettuate

if flag == 1
    disp('Denominatore dell''ultima iterata nullo');
elseif flag == 2
    disp('Raggiunto il numero massimo di iterazioni');
end

fprintf('iterate \t approssimazioni \t |f(x)| \n');
fprintf('   \t\t %10.15f \t %10.5e \n',xv(1),abs(fxv(1)));
for i = 1:length(xv)-1
   fprintf('%d \t\t %10.15f \t %10.6e \n',i,xv(i+1),abs(fxv(i+1))); 
end


scarti = [];
for i = 1:length(xv)-1
  scarti(i) = abs(xv(i+1) - xv(i));
end

fprintf('Scarti calcolati:');
for i = 1:length(xv)-1
   fprintf('\n iterata k = %d \t\t scarto = %10.6e', i, scarti(i) );
end
disp('');

semilogy([1:length(xv)-1], scarti, 'k-', [1:length(scarti)], scarti, 'ro');
hold on;
title('Scarti corrispondenti alle iterate');
print('-f1', 'grafico scarti', '-dpdf');
ylabel('scarti');
xlabel('iterate');
hold off;
