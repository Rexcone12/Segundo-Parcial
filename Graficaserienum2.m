% Defino la funcion que se me dio
f = @(x) cos(x) - x;

% creamos un vector en los valores dados y lo llamamos x
x = linspace(0, 1, 500);

% Evaluamos los puntos en la funcion dada
y = f(x);

% Codigo para graficar esos puntos
figure;
plot(x, y, 'b-', 'LineWidth', 2);% anchura de la grafica
hold on;%puede poner otras lineas en la grafica
plot(x, zeros(size(x)), 'k--'); % Línea y = 0
xlabel('x');
ylabel('f(x)');%define por donde emepzara la linea 
title('Gráfico de f(x) = cos(x) - x en [0, 1]');
grid on;
hold off;% despues de eso borrara todas las lienas cuando se vuelva a ejecutar
