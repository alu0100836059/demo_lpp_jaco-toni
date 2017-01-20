require "Practica7/version"

class Nodo
   attr_accessor :Data_ , :Next_ 
    def initialize(*args)
        if(args.count()==0)
           @Data_ = 0
           @Next_ = nil
        elsif(args.count()==1)
            @Data_ = args[0]
            @Next_ = nil
        else
            puts "Error en el Constructor"
        end
    end
    
    def to_s
        #"[Data-Node-> #{@Data_} Next-Node -> #{@Next_}]"
        "#{@Data_}"
    end
end

class Lista
   attr_accessor :Head_ ,:Size_ ,:Tail_
    def initialize
           @Size_=0
           @Head_ = nil
           @Tail_ = nil
    end
    
    def push_start(aux)
       if(@Size_==0)
           aux.Next_ = nil
           @Tail_ = aux
       else
           aux.Next_ = @Head_
           #@Head_.Prev_ = aux
       end
       #aux.Prev_ = nil
       @Head_ = aux
       @Size_ = @Size_ + 1
    end
    
    def push_end(aux)
        if(@Size_==0)
            #aux.Prev_ = nil
            @Head_ = aux
        else
            #aux.Prev_ = @Tail_
            @Tail_.Next_ = aux
        end
        aux.Next_ = nil
        @Tail_ = aux
        @Size_ = @Size_ + 1
    end
    
    def help(node)
        self.each
    end
    
    def to_s
       "no esta hecho" 
    end
    
    
end