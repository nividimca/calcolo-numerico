%====================================================================
% Script per il Metodo di Newton
% NEWTONSCRIPT.M
%====================================================================

% Ingresso dati

%disp('METODO DI NEWTON');
disp(' ');   % lascia una riga bianca in uscita su video

exprf = input('funzione = ');
exprdf = input('derivata = ');
%exprf = 'x.^2 - 1 + exp(-x)';
%exprdf = '2*x - exp(-x)';
%exprf = 'x.*log(x) - 1';
%exprdf = 'log(x)+ 1';

% trasforma le stringhe in funzioni
f = inline(exprf);
df = inline(exprdf);

disp(' METODO DI NEWTON')
disp(' ')
disp('funzione = ')
disp(exprf);
disp('derivata = ')
disp(exprdf);

% inserisce dati

disp(' ')
toll = input('tolleranza = ');
nmax = input('numero massimo di iterate = ');
x0 = input('valore iniziale = ');


% visualizza i dati inseriti

disp('tolleranza =');
disp(toll);
disp('numero massimo di iterate =');
disp(nmax);
disp('valore iniziale =');
disp(x0);

% Parte esecutiva
	
% chiede l'esecuzione della function
[xv, scarti, n, flag] = newtonfun (f, df, x0, toll, nmax);
if n == nmax
   % Raggiunto il numero massimo di iterazioni
   disp('Raggiunto il numero massimo di iterate');
   format long e
   disp('Ultima iterata calcolata');
   disp(xv(end));  
   disp('Ultimo scarto');
   disp(scarti(end));
   format
   disp('Ripetere l''esecuzione aumentando nmax');
elseif flag ~= 0 % controlla l'annullamento della derivata prima
   disp('La derivata si e'' annullata')
   disp('Iterate calcolate')
   disp(n)
   disp('Ripetere l''esecuzione cambiando il valore iniziale')   
else
   format long e
   
   % Visualizza l'ultima iterata calcolata
   disp(' ');
   disp('Ultima iterata');
   disp(xv(end));  
   
   % Visualizza l'ultimo scarto calcolato
   disp(' ');
   disp('Ultimo scarto');
   disp(scarti(end));  
   
   % Visualizza il numero di iterate
   disp(' ');
   disp('Numero di iterate');
   disp(n);
   
   
   % Comandi per visualizzare una tabella
   disp(' Colonna 1: iterate, Colonna 2: scarti')
   disp(' ')
   disp ([xv(2:end),scarti])
       
   format   

   % visualizzazione tabella con formato 
   % risultati_newton(a,b,f,xv,scarti,x0)

   % scrittura su file tabella con formato 
   %fid=fopen('nomefile.ris','w');
   %scriveris_file(fid,a,b,f,xv,scarti,x0)
   %fclose(fid);

   % Grafico dei valori assoluti degli scarti
   iter=1:n;
   semilogy(iter,abs(scarti))
   title(['abs(scarti) Newton per funzione ', exprf, ', x_0= ',num2str(x0)] );
end