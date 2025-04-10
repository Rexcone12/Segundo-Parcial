% Definir la función
f = @(x) cos(x) - x;

%intervalo
a = 0.5;
b = 1;

%Tolerancia
tol = 10^-5;

%variables
iter = 0;
error_relativo = inf;
c_prev = a;

% tabla
tabla = [];

% metodo de bisección
while (b - a) / 2 > tol
    iter = iter + 1;
    c = (a + b) / 2;
    fc = f(c);
    
    if iter > 1
        error_relativo = abs((c - c_prev) / c) * 100;
    else
        error_relativo = NaN;  % por que no se puede calcular en la primerapor eso el NaN
    end

    tabla(end+1, :) = [iter, c];

    % Verificar convergencia
    if fc == 0 || (b - a) / 2 < tol
        break;
    end

    if sign(fc) == sign(f(a))% para comparar signos y decidir cómo dividir el intervalo en el método de bisección
        a = c;
    else
        b = c;
    end
    
    c_prev = c;
end


disp(' Iteración     Raíz aproximada');
disp(tabla);


fprintf('\nNúmero total de iteraciones: %d\n', iter);
fprintf('Raíz final aproximada: %.4f\n', c);
fprintf('Valor de la función en la raíz: %.2e\n', fc);
fprintf('Error relativo porcentual final: %.4f%%\n', error_relativo);
