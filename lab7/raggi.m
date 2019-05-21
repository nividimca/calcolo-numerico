 A = [4 -1 0 0 ; -1 4 -1 0 ; 0 -1 4 -1; 0 0 -1 4];
 D = diag(diag(A));
 E = -tril(A,-1);
 F = -triu(A,1);
 BJ = inv(D)*(E+F);
 BS = inv(D-E)*F;
 disp('Autovalori matrice iterazione Jacobi')
 disp(eig(BJ))

 disp('Autovalori matrice iterazione Gauss-Seidel')
 disp(eig(BS))

 rhoJ = max(abs(eig(BJ)))
 rhoS = max(abs(eig(BS)))

