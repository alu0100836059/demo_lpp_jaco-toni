# Ejemplos de fibras lo más sencillos posibles para su comprensión

nueva_fibra = Fiber.new do
  Fiber.yield 1
  2
end

# En la primera llamada imprime 1
puts nueva_fibra.resume
# En la segunda llamada imprime 2
puts nueva_fibra.resume
# La tercera llamada DA UN ERROR porque estamos
# llamando a una fibra "muerta"
#puts nueva_fibra.resume

puts "\n------------------------------------\n\n"

fibra_ampliada = Fiber.new do
  Fiber.yield "Primer yield"
  Fiber.yield "Segundo yield"
  "Última línea, 'tercer' valor"
end

puts "Realizamos 3 llamadas (resume), la última no hace yield, devuelve la última línea:"
puts fibra_ampliada.resume
puts fibra_ampliada.resume
puts fibra_ampliada.resume

puts "\n------------------------------------\n\n"

puts "Fibras recibiéndo parámetros. Pueden recibir un número arbitrario de ellos:"
fibra_parametros = Fiber.new do |a, b, c|
  Fiber.yield a*2
  Fiber.yield b*3
  Fiber.yield c*4
  "Última línea antes de 'matar' la fibra"
end

puts fibra_parametros.resume 1, 2, 3
puts fibra_parametros.resume 1, 2, 3
puts fibra_parametros.resume 1, 2, 3
puts fibra_parametros.resume 1, 2, 3

# NOTA: a grosso modo podemos entender que cada llamada hace referencia a uno de los
# yield y además la última devolverá la última llamada. Así que podemos considerar
# que la fibra se mantiene "viva" tantas llamadas como yield tenga + la última línea
# que devolverá anter de "morir"

fibra_simple = Fiber.new do
  Fiber.yield "Solo tengo un yield y es mi última línea"
end

puts fibra_simple.resume

# En esta segunda llamada devuelve vacío así que aún solo con un yield sin más líneas
# podemos llamar a la fibra dos veces antes de que muera, simplemente si no incluimos nada
# después del yield devolverá vacío.
puts fibra_simple.resume

puts "\n------------------------------------\n\n"
