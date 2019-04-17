%--------------------------------------------------------------------------
% RISOLUZIONE DELL'EQUAZIONE ax^2+bx+c=0 MEDIANTE FORMULA CLASSICA.
%--------------------------------------------------------------------------

% RICHIESTA PARAMETRI.
% a=input('a'); 
% b=input('b');
% c=input('c');

esempio=1; % SCEGLIERE 1,2,3.

switch esempio
    case 1
        a=1; b=1e-5; c=-2e-10;
    case 2
        a=-1e-7; b=1+1e-14; c=-1e-7;
      case 3
        a=1e-10; b=-1; c=1e-10;
end


x1=[]; x2=[];

% CONTROLLI SUI PARAMETRI NULLI.
flag=0;
if a == 0
    fprintf('\n \t Parametro ''a'' nullo');
    flag=1;
end

if b == 0
    fprintf('\n \t Parametro ''b'' nullo');
end

if c == 0
    fprintf('\n \t Parametro ''c'' nullo');
end

% CALCOLO DISCRIMINANTE.
fprintf('\n \t a=%1.15e',a);
fprintf('\n \t b=%1.15e',b);
fprintf('\n \t c=%1.15e \n \n',c);

delta=b^2-4*a*c;

if delta < 0
    fprintf('\n \t Discriminante negativo.');
    flag=2;
end

% Equazione puramente di secondo grado.
if flag == 0
    x1=(-b-sqrt(delta))/(2*a);
    x2=(-b+sqrt(delta))/(2*a);
    fprintf('\n \t x1=%1.15e',x1);
    fprintf('\n \t x2=%1.15e \n \n',x2);
end


% Equazione puramente di primo grado.
if flag == 1
    if b == 0
        if c == 0
            fprintf('\n \t Ogni numero reale risolve l''equazione.');
        else
            fprintf('\n \t Nessuna soluzione.');
        end
    else
        x1=-c/b;
        fprintf('\n \t x1=%1.15e',x1);
    end
end
