# Class Persona
# Definicion de una clase usando macros, para no escribir los getters y setters
class Persona
    # Macro para declarar propiedades de la clase
    # Se le pasan simbolos (Symbol) indicando como queremos que se llamen esos atributos
    # Y el macro entonces generara getters y setters para los atributos indicados
    attr_accessor :name, :age 
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
end


# COMO SE OCUPA LA CLASE ???

persona = Persona.new("Luis", 28)
puts persona.name
puts persona.age
persona.age = 50
puts persona.age
puts Persona.suggested_names