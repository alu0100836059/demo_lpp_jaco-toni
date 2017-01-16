# Ejercicio número dos de: Complementario&Books/ExamenEneroLPP.pdf

=begin
   - Crear clase menú dietético que tenga un id, un conjunto de platos y un
   valor calórico máximo.
   - Preguntas sobre una recomendación de menús (dejó claro que no era otra clase)
=end

#################### Primera parte ###########################################################

class Menu_dietetico
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

  def to_s
    salida = ""
    salida += "Identificador del menú: #{@id}\n"+
              "Conjunto de platos:\n"+ self.string_platos +
              "V.C.M = #{@VCM} kcal"
    salida
  end
end

ligero = Menu_dietetico.new(1, ["Ensalada de col de bruselas", "Filete de pavo a la plancha",
                                "Macedonia de frutas"], 217)

puts ligero
################################################################################################


# Mirar cómo hacer el tema de la recomendación de menús, no entiendo bien qué se pregunta
