# Class Persona
# Definicion de una clase usando Struct, donde Struct se encarga de definir los getters y setters para la clase
# tambien se encarga de generar el constructor por lo que ya no es necesario declararlo
# se le pasan como parametros los Symbols, que indican las propiedades que la clase persona tiene
class Persona < Struct.new(:name, :age)
    # METODOS DE CLASE
    # Estos metodos no podran llamarse desde alguna instancia, solo desde la clase Persona.suggested_names
    def self.suggested_names
        ["Pepe", "pepito", "sutanito"]
    end
end


# COMO SE OCUPA LA CLASE ???

persona = Persona.new("Luis", 28)
puts persona.name
puts persona.age
persona.age = 50
puts persona.age
puts Persona.suggested_names