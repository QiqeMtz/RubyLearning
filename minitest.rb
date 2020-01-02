# Ejemplo de testing usando MiniTest

# Autorun identifica que hay un test y lo ejecuta, no es necesario especificarle que hay un test en nuestro archivo
require 'minitest/autorun'

class Calculator
    def sum(a, b)
        a + b
    end

    def substract(a, b)
        a - b
    end
end

# Cuando nuestra clase hereda de Minitest, simplemente tenemos que definir nuestros tests con test_
class TestCalculator < Minitest::Test
    #Metodo que se ejecuta una sola vez antes de correr los casos de prueba
    def setup
        @calc = Calculator.new
    end

    def test_sum_positives
        result = @calc.sum(1, 3)
        assert_equal result, 4
    end

    def test_sum_negatives
        result = @calc.sum(-1, -3)
        assert_equal result, -4
    end

    def test_sum_positives_negative
        result = @calc.sum(1, -3)
        assert_equal result, -2
    end
end