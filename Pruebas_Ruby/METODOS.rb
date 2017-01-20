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
puts "\n  -----\t.collect  ALIAS para .map\t-----\n\n"
puts "Con la expresión: ARRAY_DEMO.collect { |e| e*3  }\n\n"
puts ARRAY_DEMO.collect { |e| e*3  }


# inject: Toma un acumulador (lolita en este caso) y lo cambia tantas veces como
# elementos hay en el array.
# Devuelve el resultado final del acumulador (lolita)
puts "\n  -----\t.inject\t-----\n\n"
puts "\nCon la expresión: puts ARRAY_DEMO.inject { |lolita, e| lolita += e  }\n\n"
puts ARRAY_DEMO.inject { |lolita, e| lolita += e  }

# Cheto-> También podemos especificar un valor inicial como parámetro antes del bloque
puts "\nCon la expresión: puts ARRAY_DEMO.inject(12) { |lolita, e| lolita += e  }\n\n"
puts ARRAY_DEMO.inject(12) { |lolita, e| lolita += e  }

puts '\nCon la expresión: puts ["bar", "baz", "quux"].inject("foo") {|acc, elem| acc + "!!" + elem}'
puts "#{["bar", "baz", "quux"].inject("foo") {|acc, elem| acc + "!!" + elem}}"


# reduce: Alias para inject
puts "\n  -----\t.reduce  ALIAS para .inject\t-----\n\n"
puts "\nCon la expresión: puts ARRAY_DEMO.reduce { |lolita, e| lolita += e  }\n\n"
puts ARRAY_DEMO.reduce { |lolita, e| lolita += e  }

# Cheto-> También podemos especificar un valor inicial como parámetro antes del bloque
puts "\nCon la expresión: puts ARRAY_DEMO.reduce(12) { |lolita, e| lolita += e  }\n\n"
puts ARRAY_DEMO.reduce(12) { |lolita, e| lolita += e  }

puts "\nCon la expresión: puts [\"bar\", \"baz\", \"quux\"].reduce(\"foo\") {|acc, elem| acc + \"!!\" + elem}\n\n"
puts "#{["bar", "baz", "quux"].reduce("foo") {|acc, elem| acc + "!!" + elem}}"


# select: Analiza una expresión para cada elemento de un array y, si esta es verdadera,
# el elemento se añade a la salida.
# Devuelve: Los elementos para los cuales ha sido verdadera la expresión
puts "\n  -----\t.select\t-----\n\n"
puts "\nCon la expresión: puts ARRAY_DEMO.select {|x| x%2 == 0}"
puts "#{ARRAY_DEMO.select {|x| x%2 == 0}}"

# find: Analiza una expresión para cada elemento de un array y
# devuelve el primer elemento que la cumple.
# Devuelve: El primero de los elementos para el cual ha sido verdadera la expresión
puts "\n  -----\t.find\t-----\n\n"
puts "\nCon la expresión: puts ARRAY_DEMO.find {|x| x%2 == 0}"
puts "#{ARRAY_DEMO.find {|x| x%2 == 0}}"

# detect: Alias para find
puts "\n  -----\t.detect\t-----\n\n"
puts "\nCon la expresión: puts ARRAY_DEMO.detect {|x| x%2 == 0}"
puts "#{ARRAY_DEMO.detect {|x| x%2 == 0}}"

# reject: El opuesto de select. Analiza una expresión para cada elemento de un array y, si esta es FALSA,
# el elemento se añade a la salida.
# Devuelve: Los elementos para los cuales ha sido FALSA la expresión
puts "\n  -----\t.reject\t-----\n\n"
puts "\nCon la expresión: puts ARRAY_DEMO.reject {|x| x%2 == 0}"
puts "#{ARRAY_DEMO.reject {|x| x%2 == 0}}"
