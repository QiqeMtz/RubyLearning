# Ejemplo de como realizar testing con MiniTest

# Byebug es util para casos donde hay un error, pero no tenemos idea de donde esta sucediento
require 'byebug'

class Calculator
    def sum(a, b)
        a + b
    end

    def substract(a, b)
        a - b
    end
end

# Testing a mano, sin uso de MiniTest

calc = Calculator.new

tests_sum = {
    [1, 2] => 3,
    [5, 6] => 11,
    [100, 1] => 101
}

tests_sum.each do | input, expect_result|
    # byebug 
    # Colocamos byebug en donde necesitemos interactuar con el codigo, podemos ejecutar linea por linea, podemos llamar a variables
    # input nos regresaria el valor de input
    # expect_result nos regresaria el valor de expect_result
    # podemos ejecutar lienas completas de codigo como la evaluacion del unless
    # unless es un if ! , negando la expresion booleana que arroje la condicion es como un "a menos que esto se cumpla, el resto ignora"
    # con n, saltamos de linea en linea con byebug
    unless calc.sum(input[0], input[1]) == expect_result
        raise "Test failed for input #{input}. Expected result was #{expect_result}"
    end
end