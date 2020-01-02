#Condicionales

role = :user
# is_authenticated = true

# if is_authenticated
#     puts "Pantalla de admin"
# else
#     puts "Pantalla de login"
# end

if role == :admin
    puts "Pantalla de admin"
elsif role == :superadmin
    puts "Pantalla de superadmin"
else
    puts "Pantalla de login"
end

