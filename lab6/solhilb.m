n = 12;
xvera = ones(n,1); %fisso la soluzione vera che voglio ottenere
H = hilb(n);
kappa = cond(H);
fprintf('\n \t [COND K_2(H)]        %3.3e ',kappa);
b = H* xvera; %genero il temrine noto in modo che la soluzione sia quella che voglio io
x = H\b;
err_rel = norm(x-xvera)/norm(xvera); %errore relativo
fprintf('\n \t [ERRORE RELATIVO]    %3.3e',err_rel);
res_rel = norm(b-H*x)/norm(b);  %residuo relativo
% residuo e' l'x approssimato t.c. Ax e' circa b
fprintf('\n \t [RESIDUO RELATIVO]   %3.3e',res_rel);
fprintf('\n ');

%si domstra che delta*b e' uguale al residuo r