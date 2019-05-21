function [ x, iter, vscarti ] = jacobi( A, b,x0, itmax, tol )

    xold = x0;  %xold corrisponde alla xk dei lucidi
    
    %partizionamento della matrice
    D = diag(diag(A));
    E = -tril(A,-1);
    F = -triu(A,1);
    
    M = D;
    N = E + F;
    
    vscarti = []; %vettore contenente le norme degli scarti
    scarto = 1;
    iter = 0;
    
    while scarto > tol && iter < itmax
        iter = iter + 1;
        tnoto = N * xold + b;
        x = M \ tnoto;
        scarto = norm(x - xold);
        vscarti = [vscarti; scarto];
        xold = x;
    end
end

