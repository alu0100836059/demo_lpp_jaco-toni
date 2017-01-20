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

class Menu
    attr_accessor :Nombre_,:Porcentaje_,:Platos_,:VCT,:Por_hydr,:Por_prote,:Por_fat
    def initialize(name,por,*platos,vct,por_hydr,por_prote,por_fat)
        @Nombre_ = name
        @Porcentaje_ = por
        @VCT = vct
        @Por_fat = por_fat
        @Por_prote = por_prote
        @Por_hydr = por_hydr
        @Platos_ = platos
    end
    
    def to_s
        str = ""
        str << "#{@Nombre_}  (#{@Porcentaje_})\n"
        @Platos_.each do |n|
            str<<"\t - #{n}\n"
        end
        str << "V.C.T | %   #{@VCT} kcal | #{@Por_prote}% - #{@Por_hydr}% - #{@Por_fat}%"
    return str
    end
    
    #GETTER
    def get_nombre
        @Nombre_
    end
    def get_porcentaje
        @Porcentaje_
    end
    def get_platos
        @Platos_
    end
    def get_vct
        @VCT
    end
    def get_por_hydr
        @Por_hydr
    end
    def get_por_prote
        @Por_prote
    end
    def get_por_fat
        @Por_fat
    end
    #SETTER
    def set_nombre(nombre)
        @Nombre_ = nombre
    end
    def set_porcentaje(porcen)
        @Porcentaje_ = porcen
    end
    def set_platos(platos_array)
        @Platos_ = platos_array
    end
    def set_vct(vct)
        @VCT = vct 
    end
    def set_por_hydr(por_)
        @Por_hydr = por_
    end
    def set_por_prote(por_)
        @Por_prote = por_
    end
    def set_por_fat(por_)
        @Por_fat = por_
    end
end