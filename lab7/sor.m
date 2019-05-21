function [ x, iter, vscarti ] = gauss_seidel( A, b, omega, x0, itmax, tol )

    xold = x0;  %xold corrisponde alla xk dei lucidi
    
    %partizionamento della matrice
    D = diag(diag(A));
    E = -tril(A,-1);
    F = -triu(A,1);
    
    M = D - omega *E;
    N = (1 - omega) * D + omega * F;
    
    vscarti = []; %vettore contenente le norme degli scarti
    scarto = 1;
    iter = 0;
    
    while scarto > tol && iter < itmax
        iter = iter + 1;
        tnoto = N * xold + omega * b;
        x = M \ tnoto;
        scarto = norm(x - xold);
        vscarti = [vscarti; scarto];
        xold = x;
    end
end

