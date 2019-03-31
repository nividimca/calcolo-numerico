% Andrea Favero
% esercizio3 foglio del secondo laboratorio

% Si scriva uno script per utilizzare la funzione bisezione.m creata. 
% Tale script deve:
% 
% 1) Richiedere a video (comando input) i dati, ovvero la funzione, 
% gli estremi dell’intervallo iniziale, la tolleranza e il numero massimo 
% di iterazioni richieste.
% 
% 2) Ottenuti gli argomenti di uscita della funzione, visualizzare (comando disp)
% l’ultima soluzione approssimata determinata dalla function, il relativo residuo,
% e l’indice dell’ultima iterata calcolata.
% 
% 3) Realizzare un grafico che rappresenti (scala logaritmica sull’asse y) il 
% valore assoluto del vettore che contiene i residui.
%

funz = input('Inserire la funzione di cui vuole calcolare uno zero: ');
a = input('Inserire l'' estremo sinistro: ');
b = input('Inserire l'' estremo destro: ');
toll = input('Inserire la tolleranza relativa alla grandezza dell''intervallo: ');
maxit = input('Inserire il numero massimo di iterazioni effettuabili: ');

f = inline(funz);
[vc,sl,vr,iter]=bisezione(f,a,b,toll,maxit);

disp(['Ultima soluzione approssimata calcolata: ', num2str(vc(iter))]);
disp(['Relativo residuo f(x) calcolato: ', num2str(vr(iter))]);
disp(['Indice dell''ultima iterata calcolata: ', num2str(iter)]);

semilogy(iter, abs(vr),'r*-');

% Continuazione consegna:
% Considerata la soluzione positiva della funzione indicata nell’Esercizio 1 ed
% utilizzando l’intervallo precedentemente determinato, si applichi il metodo di
% bisezione eseguendo lo script. Si utilizzi come test di arresto il
% valore di tolleranza toll = 1e − 8, ed nmax = 100.
%
% risultati ottenuti:
% ------------------------------------------------------------------------------
% Inserire la funzione di cui vuole calcolare uno zero: 'x.^(2) -1 + e^(-x)'
% Inserire l' estremo sinistro: 0.7
% Inserire l' estremo destro: 0.75
% Inserire la tolleranza relativa alla grandezza dell'intervallo: 1e-8
% Inserire il numero massimo di iterazioni effettuabili: 100
% Ultima soluzione approssimata calcolata: 0.71456
% Relativo residuo f(x) calcolato: 4.9842e-09
% Indice dell'ultima iterata calcolata: 23
% ------------------------------------------------------------------------------

% Continuazione consegna:
% Si provi a ripetere l’esecuzione inserendo nmax = 20 e la stessa tolleranza e
% si analizzino i risultati ottenuti paragonandoli ai precedenti.
% In particolare, quali considerazioni possono essere effettuate relativamente al
% valore x_n ottenuto?
% ------------------------------------------------------------------------------
% Inserire la funzione di cui vuole calcolare uno zero: 'x.^(2) -1 + e^(-x)'
% Inserire l' estremo sinistro: 0.7
% Inserire l' estremo destro: 0.75
% Inserire la tolleranza relativa alla grandezza dell'intervallo: 1e-8
% Inserire il numero massimo di iterazioni effettuabili: 20
% Ultima soluzione approssimata calcolata: 0.71456
% Relativo residuo f(x) calcolato: -2.3021e-08
% Indice dell'ultima iterata calcolata: 20
% ------------------------------------------------------------------------------
% 
% Ultima soluzione approssimata calcolata in entrambi i casi è 0.71456
% Si può notare che i due residui calcolati per ultimi sono 'fortemente' discordi
% quindi ...
