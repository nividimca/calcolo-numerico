n = 12;
xvera = ones(n,1);
H = hilb(n);
kappa = cond(H);
fprintf('\n \t [COND K_2(H)]        %3.3e ',kappa);
b = H* xvera;
x = H\b;
err_rel = norm(x-xvera)/norm(xvera); 
fprintf('\n \t [ERRORE RELATIVO]    %3.3e',err_rel);
res_rel = norm(b-H*x)/norm(b);
fprintf('\n \t [RESIDUO RELATIVO]   %3.3e',res_rel);
fprintf('\n ');

