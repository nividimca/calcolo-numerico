f=@(x) x.^20;      % FUNZIONE INTEGRANDA
a=-1; b=1;         % INTERVALLO DI INTEGRAZIONE
N_trap=501;        % NUMERO SUBINTERVALLI PER SIMPSON COMPOSTA.
[x_trap,w_trap, Itrap]=simpson_composta(N_trap,a,b,f);

format long
Itrap

disp('valore vero dell''integrale definito');
Ivero=2/21

disp('Errore relativo');
Etrap=abs((Ivero-Itrap)/Ivero)
