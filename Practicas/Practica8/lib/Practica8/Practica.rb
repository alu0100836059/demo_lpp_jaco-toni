require "/home/ubuntu/workspace/demo_lpp_jaco-toni/Practicas/Practica7/lib/Practica7/Practica7"
require "/home/ubuntu/workspace/demo_lpp_jaco-toni/Practicas/Practica6/lib/Practica6"
class Nodo_doble < Nodo
   attr_accessor :Prev_
   def initialize(*args)
      super
      @Prev_ = nil
   end
end

class Lista_doble < Lista
    attr_accessor
    def initialize
        super
    end
    
    def push_start(aux)
        if(@Size_!=0)
            @Head_.Prev_ = aux
        end
        aux.Prev_ = nil
        super
    end
    
    def push_end(aux)
        if(@Size_==0)
            aux.Prev_ = nil
        else
            aux.Prev_ = @Tail_
        end
        super
    end
    
    def pop_start()
        aux = @Head_
        @Head_ = @Head_.Next_
        @Head_.Prev_ = nil
        return aux
    end
    
    def pop_end()
        aux = @Tail_
        @Tail_ = @Tail_.Prev_
        @Tail_.Next_ = nil
        return aux
    end
end

class Menu_por_edad < Menu
    attr_accessor :edades_
    def initialize(name,por,*platos,vct,por_hydr,por_prote,por_fat,edades)
       @edades_ = edades
       super(name,por,*platos,vct,por_hydr,por_prote,por_fat)
    end
end

class Menu_por_alimentos < Menu
   attr_accessor :alimentos_ 
   def initialize(name,por,*platos,vct,por_hydr,por_prote,por_fat,alimentos)
       @alimentos_ = alimentos
       super(name,por,*platos,vct,por_hydr,por_prote,por_fat) 
   end
end