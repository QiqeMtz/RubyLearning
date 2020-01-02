# Ciclos

# while condicion do
#     puts "hola"
# end

x  =1

# Ciclo while de toda la vida :)
while x < 5 do
    puts "hola #{x}"
    x += 1
end

# Loop funciona como un ciclo infinito y hay que ponerle break if con su condicion de paro
x = 1
loop do 
    puts "Hola #{x}"
    break if x >= 5 
    x += 1
end

# Ciclo for de toda la vida
for i in 1..4 do
    puts "Hola #{i}"
end

# Iterando un arreglo es una forma de hacer ciclos tambien
[1,2,3,4].each { |x| puts "Hola #{x}"}

# Usando un numero entero para realizar iteraciones
10.times { |x| puts "Hola #{x}"}