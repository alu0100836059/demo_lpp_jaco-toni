class Receta
  attr_accessor :titulo, :porciones, :tiempo, :ingredientes, :instrucciones

  def initialize titulo, porciones, tiempo, ingredientes, instrucciones
    @titulo = titulo
    @porciones = porciones
    @tiempo = tiempo
    @ingredientes = ingredientes
    @instrucciones = instrucciones
  end

  def mostrar_instrucciones
    salida = ""
    @instrucciones.each.with_index {|x, i| salida += "#{i + 1}) " + "#{x}\n"}
    salida.chop!
  end

  def mostrar_ingredientes
    salida = ""
    @ingredientes.each {|x| salida += "#{x}, "}
    salida.chop!.chop!
  end

  def subrayado_titulo
    salida = ""
    numero_caracteres = @titulo.length
    numero_caracteres.times {salida += "="}
    salida
  end

  def to_s
    "#{@titulo}\n" + self.subrayado_titulo + "\n\nPorciones: #{@porciones}" +
    "\nTiempo de preparación: #{@tiempo} minutos\n\nIngredientes:\n"+
    mostrar_ingredientes + "\n\nInstrucciones:\n" + mostrar_instrucciones
  end
end
