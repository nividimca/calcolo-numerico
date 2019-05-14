function[L,U] = lugauss(A)
% INPUT:
% A e' una matrice quadrata regolare

    n = size(A,1);

    L = eye(n); %L ha tutti 1 nella diagonale
    U = A;

    for k = 1:n-1
        for i = k+1:n
            L(i,k) = U(i,k)/U(k,k);
            for j = k:n
                U(i,j) = U(i,j) - L(i,k)*U(k,j);
            end
        end
    end

end