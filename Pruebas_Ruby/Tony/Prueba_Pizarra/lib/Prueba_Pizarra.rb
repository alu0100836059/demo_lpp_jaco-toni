require "Prueba_Pizarra/version"

class Comida
    attr_accessor :Nombre_,:Porcion_,:Cantidad_
   def initialize(nombre,porcion,cantidad)
        @Nombre_ = nombre
        @Porcion_ = porcion
        @Cantidad_ = cantidad
   end
   
   def to_s
        "#{@Nombre_}, #{@Porcion_} , #{@Cantidad_}"
   end
end

class Pizarra
    attr_accessor :Bloque_
   def initialize
      @Bloque_ = [] 
   end
   
   def add_comida(*comida)
      hilos = []
      comida.each do |r|
          hilos << Thread.new() {@Bloque_<< r}
      end
      
      hilos.each do |r|
         r.join 
      end
   end
    
    
end