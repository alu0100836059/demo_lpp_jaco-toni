def comprobar x
  if x.is_a? String
    puts "Soy un string"
  elsif x.is_a? Integer
    puts "Soy un entero"
  end
end

comprobar "hola"
comprobar 4

class Nodo
  attr_accessor :data, :previous, :next

  def initialize(dato, ant, sig)
    @data = dato
    @previous = ant
    @next = sig
  end

  def to_s
    salida = ""
    salida += "#{@data} ,#{@previous}, #{@next}"
    # puts "El valor es: #{@data}"
    # puts "Su anterior es: #{@previous}"
    # puts "Su siguiente es: #{@next}"
    salida
  end

  def tipo
    if self.is_a? Nodo
      puts "Soy un nodo"
    elsif self.is_a? BasicObject
      puts "Soy un BasicObject"
    end
  end

  def demo
    puts "estoy en demo"
  end
end

nodito = Nodo.new(6, nil, nil)
puts "\n\n Prueba objeto"

nodito.tipo
puts "\n", nodito
