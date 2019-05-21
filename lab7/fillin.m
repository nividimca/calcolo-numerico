n = 100;
%somma di 4 sulla diagonale principale meno gli uni della diagonale
%sottostante e meno gli uno della diagonale soprastante
A = 4*diag(ones(n,1))-diag(ones(n-1,1),-1)-diag(ones(n-1,1),1);
A(1,:) = ones(1,n);
A(:,1) = ones(n,1);

figure; 
spy(A); title('A'); %vedo dove stanno i non zeri in A

[L,U,P] = lu(A); %calcolo la fattorizzazione LU

figure; 
spy(U); title('U'); %vedo dove stanno i non zeri in U

figure; 
spy(L); title('L'); %vedo dove stanno i non zeri in  L



