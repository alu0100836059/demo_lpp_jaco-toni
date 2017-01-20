=begin
--> Archivo para incluir los métodos más utilizados y PROPIOS de Ruby
    intentando aportar la mayor información posible.
=end

ARRAY_DEMO = [1,2,3,4,5,6,7,8,9,10]
puts "Valor de la variable ARRAY_DEMO: #{ARRAY_DEMO}"

# map:
# Realiza una acción en cada elemento del array. El array original NO ES MODIFICADO.
# DEVUELVE: el array modificado con la acción que se ha realizado.

puts "\n  -----\t.map\t-----\n\n"

# Devolverá el array anterior con cada elemento multiplicado por 3
puts "Con la expresión: puts ARRAY_DEMO.map { |e| e*3  }\n\n"
puts ARRAY_DEMO.map { |e| e*3  }




# each:
# Ejecuta una acción TOMANDO COMO PARÁMETROS cada elemento del array. El array original NO ES MODIFICADO.
# DEVUELVE: el array ORIGINAL.

puts "\n  -----\t.each\t-----\n\n"

# Imprimirá por pantalla el array anterior con cada elemento multiplicado por 3.
# Devolverá el array ORIGINAL.
puts "Con la expresión: ARRAY_DEMO.each { |e| puts e*3  }\n\n"
ARRAY_DEMO.each { |e| puts e*3  }

# collect: ALIAS para map
puts "\n  -----\t.collect\t-----\n\n"
puts "Con la expresión: ARRAY_DEMO.collect { |e| e*3  }\n\n"
puts ARRAY_DEMO.collect { |e| e*3  }


# inject: Toma un acumulador (lolita en este caso) y lo cambia tantas veces como
# elementos hay en el array.
# Devuelve el resultado final del acumulador (lolita)
puts "\n  -----\t.inject\t-----\n\n"
puts "Con la expresión: puts ARRAY_DEMO.inject { |lolita, e| lolita += e  }\n\n"
puts ARRAY_DEMO.inject { |lolita, e| lolita += e  }

# Cheto-> También podemos especificar un valor inicial como parámetro antes del bloque
puts "Con la expresión: puts ARRAY_DEMO.inject(12) { |lolita, e| lolita += e  }\n\n"
puts ARRAY_DEMO.inject(12) { |lolita, e| lolita += e  }

puts 'Con la expresión: puts ["bar", "baz", "quux"].inject("foo") {|acc, elem| acc + "!!" + elem}'
puts "#{["bar", "baz", "quux"].inject("foo") {|acc, elem| acc + "!!" + elem}}"
