# Adivina quien soy en ruby.

# Lista de personas que puedo ser
personas = ['pepe', 'juan', 'paco', 'paula', 'laura', 'jacobo']

# Escogemos quien somos de forma aleatoria
secreto = personas[rand(6)]

puts "Soy?..."
while op = STDIN.gets
  op.chop!
  if op == secreto
    puts "Enhorabuena, me has descubierto"
    # si nos descrubren rompemos el bucle
    break
  else
    puts "Lo siento, tu pierdes!"
  end
  puts "Quién soy?:.."
end

# tal y como lo hemos programado, permitirá introducir tantas veces como
# queramos hasta haber acertado. Si no, en el momento en que hagamos ^D o ^C
# para salir del programa, se nos imprimirá la última línea (26). Cuando
# acertamos, también se imprime la útima línea, posible(control_boolean)
puts "Ya ves... Soy ", secreto, "!!!"
