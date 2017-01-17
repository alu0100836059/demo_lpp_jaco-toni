# Ejercicio número cuatro de: Complementario&Books/ExamenEneroLPP.pdf

=begin
   - Crear una función que calcule el valor máximo de una recomendación
=end

=begin
  En este apartado está el problema de como afrontamos el tema de las
  recomendaciones. Parece lo más intuitivo ya que no se trata de una clase
  a mayores, realizar dicha recomendación a través de un array de menús.
  El código que sigue a continuación supone esta última aserción.
=end

##### clase del ej2.rb ####
class Menu_dietetico

  # Incluimos el módulo comparable para poder hacer comparaciones y el módulo
  # enumerable para poder hacer uso de las funciones min max
  include Comparable
  include Enumerable
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

  # Para el módulo Enumerable
  # def each
  #
  # end
  ##############



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
recomendacion.each do |r|
  puts r
end


#### ej4.rb Función que se pide en el ejercicio
def max_VCM conjunto
  maximo = conjunto.max.VCM
  maximo
end

# Mostramos por pantalla:
puts "\nEl máximo de calorías es :\n#{max_VCM recomendacion}"
