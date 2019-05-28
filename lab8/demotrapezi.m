f=@(x) x.^20;      % FUNZIONE INTEGRANDA
a=-1; b=1;         % INTERVALLO DI INTEGRAZIONE
N_trap=501;        % NUMERO SUBINTERVALLI PER TRAPEZI COMPOSTA. serve per dividere [-1,1] in 501 suddivisioni
[x_trap,w_trap, Itrap]=trapezi_composta(N_trap,a,b,f);

format long
Itrap

disp('valore vero dell''integrale definito');
Ivero=2/21

disp('Errore relativo');
Etrap=abs((Ivero-Itrap)/Ivero)
