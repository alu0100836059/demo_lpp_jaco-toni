# Ejercicio número seis de: Complementario&Books/ExamenEneroLPP.pdf

=begin
- función que multiplique un factor por una recomendación. Se trata de cumplir
  la expectativa del ejercicio 5: max(b)*b siendo b una recomendación.
=end

######   del ej4.rb ######

class Menu_dietetico

  # Incluimos el módulo comparable para poder hacer comparaciones y
  # poder hacer uso de las funciones min max de enumerable (que ya es accesible
  # desde una estructura tipo array).
  include Comparable
  ##################

  attr_accessor :id, :platos, :VCM

  def initialize (identificador, conjunto_platos, calorico_max)
    @id = identificador
    @platos = conjunto_platos
    @VCM = calorico_max
  end

  def string_platos
    salida = ""
    @platos.each do |plato|
      salida += "\t#{plato}\n"
    end
    salida
  end

  # Nuevo ej4.rb
  # Para el módulo Comparable
  def <=> other
    self.VCM <=> other.VCM
  end

  def to_s
    salida = ""
    salida += "Identificador del menú: #{@id}\n"+
              "Conjunto de platos:\n"+ self.string_platos +
              "V.C.M = #{@VCM} kcal"
    salida
  end
end
#############################

# Creando varios menús para hacer una recomendación
ligero_mañana = Menu_dietetico.new(1, ["Zumo de naranja", "Pieza de fruta",
                                "Leche o café con poco azúcar"], 177)

ligero_mediodia = Menu_dietetico.new(2, ["Ensalada de col de bruselas", "Filete de pavo a la plancha",
                "Macedonia de frutas"], 317)

ligero_mediatarde = Menu_dietetico.new(3, ["Pieza de fruta", "Iogurt con frutos secos",
                "Té o agua con limón"], 117)

ligero_noche = Menu_dietetico.new(4, ["Pollo a la plancha", "Filete de pavo a la plancha"], 137)


recomendacion = [ligero_mañana, ligero_mediodia, ligero_mediatarde, ligero_noche]


# Mostramos para ver la correcta inserción de los datos:
def mostrar_recomendacion conjunto
  conjunto.each do |r|
    puts r
  end
end
mostrar_recomendacion recomendacion

#### ej4.rb Función que se pide en el ejercicio
def max_VCM conjunto
  maximo = conjunto.max.VCM
  maximo
end

# Mostramos por pantalla:
puts "\nEl máximo de calorías es :\n#{max_VCM recomendacion}"
##############################################################################

# Función ej6rb

# conjunto: recomendación, factor: número(ej: max_VCM(conjunto))
# estamos trabajando sobre una copia, no sobre la recomendación que nos pasan,
# solo habría que eliminar aux y trabajar directamente sobre conjunto.
def mult(conjunto, factor)
  puts "Funcion de multiplicación\n"
  aux = conjunto
  aux.each do |x|
    x.VCM *= factor
    puts x.VCM
  end
  aux
end

puts "\nSalida para el ej6.rb con la misma recomendacion y un factor de #{max_VCM recomendacion}\n"
recomendacion_por_factor = mult(recomendacion, (max_VCM recomendacion))

mostrar_recomendacion recomendacion_por_factor
