function result = evaluate_polynomial(a, x)
    % Validar si el vector de coeficientes está vacío
    if isempty(a)
        error('El vector de coeficientes está vacío.');
    end
    
    % Inicializar el resultado con el primer coeficiente
    result = a(1);
    i = 2; % Índice para recorrer el vector de coeficientes
    
    % Bucle while para evaluar el polinomio de forma anidada
    while i <= length(a)
        result = result * x + a(i);
        i = i + 1; % Incrementar el índice
    end
end

a = [4, -2, 5, -1]; % Coeficientes del polinomio
x = 2; % Valor de x
resultado = evaluate_polynomial(a, x);
disp(['El resultado es: ', num2str(resultado)]);