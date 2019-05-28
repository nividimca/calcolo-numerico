%finire
f=@(x) exp(x-2) .* sin(x);      % FUNZIONE INTEGRANDA
a=3; b=1;         % INTERVALLO DI INTEGRAZIONE

disp(['Soluzione vera I',quad(f,a,b,1e-14)]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%modificare da qua
N_trap=501;        % NUMERO SUBINTERVALLI PER TRAPEZI COMPOSTA
[x_trap,w_trap, Itrap]=trapezi_composta(N_trap,a,b,f);

format long
Itrap

disp('valore vero dell''integrale definito');
Ivero=2/21

disp('Errore relativo');
Etrap=abs((Ivero-Itrap)/Ivero)
