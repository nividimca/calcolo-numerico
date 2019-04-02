%Interpolazione polinomiale della funzione seno in [-5,5]
%usiamo polyfit e polyval
n = input('Introdurre numero di punti: ');
a = -5;
b = 5;
%calcolo i nod (equispaziati)
x = linspace(a,b,n);
y = sin(x); %ordinate dei punti da interpolare

%creazione del vettore xval (201 punti)
xval = linspace(a,b,201);

%calcoliamo il polinomio con polyfit
grado = n -1;
c = polyfit(x, y, grado);
yval = polyval(c, xval);

%creazione del grafico della funzione e del suo interpolante
clf;
plot(xval, sin(xval), 'b-');
hold on;
plot(xval, yval, 'r--'); %'r--' e' linea rossa
plot(x,y,'ro');
hold off;
string = ['sin(x) e il suo interpolante di grado ', num2str(grado)];
title(string);
legend('sin(x)','interpolante','punti');

%il modo in cui polyfit calcola i coefficienti e' mal condizionato
