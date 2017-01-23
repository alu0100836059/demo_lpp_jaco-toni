require "/home/ubuntu/workspace/demo_lpp_jaco-toni/Practicas/Practica7/lib/Practica7/Practica7"
class Comida_dls
    attr_accessor :Descrip_,:Por_reco_,:Peso_
    def initialize(descrip,por_recomen,peso)
        @Descrip_ = descrip
        @Por_reco_ = por_recomen
        @Peso_ = peso
    end

    def to_s
        str = "#{@Descrip_} , #{@Por_reco_} , #{@Peso_}"
        return str
    end
    
    
end

class Menu_dls
    attr_accessor :Nombre_,:Porcentaje_,:Platos_,:VCT,:Por_hydr,:Por_prote,:Por_fat
   def initialize(&bloque)
       @Nombre_
       @Porcentaje_ = []        #Lo quiere en intervalo
       @VCT
       @Por_fat
       @Por_prote
       @Por_hydr
       @Platos_ = Array.new()   #Vector de platos
   
   
   
       @Por_alimentos_
       @Por_edades_
       
       if block_given?
            if bloque.arity == 1    #Intentan hacer un Menu_DSL.new()
                yield self
            else
                instance_eval(&bloque)
            end
       end
   end
   
   def to_s
        str = "#{@Nombre_}   (#{@Porcentaje_[0]}-#{@Porcentaje_[1]})\n"
        @Platos_.each do |n|
           str << "\t #{n}\n" 
        end
        str << "V.C.T  | %      #{@VCT}  |  #{@Por_fat} %  #{@Por_hydr} %  #{@Por_prote}"
        return str
   end
   
   def titulo(titulo, opciones = {})
       @Nombre_ = titulo
       @Por_alimentos_ = "#{opciones[:alimentos]}" if opciones[:alimentos]
       @Por_edades_ = "#{opciones[:edades]}" if opciones[:edades]
   end
   
   def por_dieta(opciones = {})
       @Porcentaje_[0] = "#{opciones[:min]}" if opciones[:min]
       @Porcentaje_[1] = "#{opciones[:max]}" if opciones[:max]
   end
   
   def comida(opciones = {})
       descrip ="#{opciones[:descripcion_]}" if opciones[:descripcion_]
       por_recomen = "#{opciones[:porcion_reco_]}" if opciones[:porcion_reco_]
       peso = "#{opciones[:peso_]}" if opciones[:peso_]
       aux = Comida_dls.new(descrip,por_recomen,peso)
       @Platos_ << aux
   end
        
   def resto(opciones = {})
       @VCT = "#{opciones[:VCT]}" if opciones[:VCT]
       @Por_prote = "#{opciones[:p_proteinas]}" if opciones[:p_proteinas]
       @Por_fat = "#{opciones[:p_grasas]}" if opciones[:p_grasas]
       @Por_hydr = "#{opciones[:p_hidratos]}" if opciones[:p_hidratos]
   end
    
end

