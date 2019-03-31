% Andrea Favero
% Si vogliono calcolare le soluzioni approssimate
% (una è anche determinabile in modo analitico esatto!) dell’equazione
% non lineare f(x) = x^2 - 1 + e^(-x) = 0.
% Si determinino graficamente, utilizzando le capacità grafiche di Matlab,
% degli intervalli sufficientemente piccoli (di ampiezza non maggiore di 0.2) 
% che contengono una e una sola soluzione, dell’equazione f(x) = 0.

f = inline('x.^(2) - 1 + e.^(-x)');
%ci si accorge immediatamente che la soluziona analitica esatta è 0.
a = -1;% 0.7;
b = 1; % 0.75;
x = linspace(a, b, 1000);
y = f(x);

plot(x,y);
hold on;
grid on;  %visualizza una griglia nel grafico
plot([a,b],[0,0],'k-') % Disegna l'asse x nell'intervallo [a,b]
title('f(x) = x^2 - 1 + e\^(-x)');
hold off;

%escluso lo zero determinabile analiticamente e coincidente con il valore 0
%usando le capacità grafiche di matlab, si può notare che, è
%presente un secondo zero nell'intervallo [0.70 , 0.75]