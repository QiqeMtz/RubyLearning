# Class Persona
# Definicion de una clase de la manera tradicional
class Persona
    # METODOS DE CLASE
    # Estos metodos no podran llamarse desde alguna instancia, solo desde la clase Persona.suggested_names
    def self.suggested_names
        ["Pepe", "pepito", "sutanito"]
    end

    # METODOS DE INSTANCIA
    # estos metodos se podran llamar desde cualquier instancia de la clase Persona
    # Ejemplo: persona = Persona.new("Luis", 14)
    #          persona.name
    # Los metodos de clase, como los de arriba, no podra llamarse desde instancia, sino de nivel clase
    # Ejemplo: Persona.suggested_names
    # def es la palabra reservada para declarar metodos/funciones
    # Forma de declarar el constructor
    def initialize(name, age)
        @name = name
        @age = age
    end

    # Forma de declarar un getter
    def name
        # En cualquier metodo de ruby, la ultima linea de un metodo es la que sera retornada, por lo tanto
        # no hace falta colocar la palabra return
        @name
    end

    def age
        @age
    end

    # Forma de declarar un setter
    # persona.name = "pepe"
    def name=(name)
        @name = name
        # self se utiliza en caso de que busquemos encadenar, ejemplo, (persona.name = "pepe").age = 7
        self
    end

    def age=(age)
        @age = age
        # self es una referncia al mismo objeto
        self
    end
end


# COMO SE OCUPA LA CLASE ???

persona = Persona.new("Luis", 28)
puts persona.name
puts persona.age

puts Persona.suggested_names