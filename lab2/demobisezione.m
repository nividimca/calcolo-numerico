% Definizione della funzione e dell'intervallo
f=inline('x.^2-2'); a=1; b=2;

% Inizializzazione dei parametri di ingresso
toll=10^(-15);maxit=100;

% Chiamata alla function bisezione perche' venga eseguita
[vc,sl,vr,iter]=bisezione(f,a,b,toll,maxit);

%Stampa dei risultati mediante un ciclo for
for k=1:iter
  fprintf('\n [k]:%3.0f [c]: %15.15f [AMP]: %5.2e [RES]:%5.2e  ',k,vc(k),sl(k),vr(k))
end
fprintf('\n');

%Stampa
%risultati_bis(a,b,f,vc,sl,vr)

%Grafico con il profilo di convergenza
%Usare il comando semilogy

