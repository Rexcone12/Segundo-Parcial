% Definir la función
f = @(x) x^3 - 5*x^2 + 7*x - 3;
df = @(x) 3*x^2 - 10*x + 7;
ddf = @(x) 6*x - 10;

% Parámetros iniciales
x0 = 4; % Valor inicial
tol = 1e-6; % Tolerancia
max_iter = 100; % Número máximo de iteraciones

% Inicialización
x = x0;
iter = 0;
error_relativo = Inf;

% Encabezado para la impresión de resultados
fprintf('%10s %15s %15s %20s %20s\n', ...
    'Iteración', 'Raíz Anterior', 'Raíz Nueva', 'Aplicación Método', 'Error Relativo (%)');

% Iteraciones del método de Newton-Raphson modificado
while error_relativo > tol && iter < max_iter
    fx = f(x); % Evaluar la función en x
    dfx = df(x); % Evaluar la primera derivada en x
    ddfx = ddf(x); % Evaluar la segunda derivada en x
    x_new = x - (fx * dfx) / (dfx^2 - fx * ddfx); % Fórmula modificada de Newton-Raphson
    error_relativo = abs((x_new - x) / x_new) * 100; % Cálculo del error relativo
    iter = iter + 1; % Incrementar el contador de iteraciones

    % Imprimir los resultados con fprintf
    fprintf('%10d %15.6f %15.6f %20.6f %20.6f\n', ...
        iter, x, x_new, x_new - x, error_relativo);

    % Actualizar la raíz anterior
    x = x_new;
end

% Resultados finales
fprintf('\nRaíz aproximada: %.6f\n', x);
fprintf('Número de iteraciones: %d\n', iter);
fprintf('Error relativo porcentual: %.6f%%\n', error_relativo);