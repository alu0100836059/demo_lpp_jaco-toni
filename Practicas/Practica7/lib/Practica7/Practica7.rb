

class Nodo
    include Comparable
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
        "Soy el #{self.class} -> (#{@Data_})"
    end
    
    def <=>(oher)
        #Por hacer 
    end
end

class Lista
    include Enumerable
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
    
    def pop_start()
        if(@Size_==0)
           puts "Error! La lista esta vacia" 
        else
            aux = @Head_
            @Head_ = @Head_.Next_
            @Size_ = @Size_ - 1
            return aux
        end
    end
    
    def pop_end()
        if(@Size_==0)
           puts "Error! La lista esta vacia" 
        else
            
            #@Tail_ = @Tail_.Prev_
            #aux = @Tail_.Next_
            #@Tail_.Next_ = nil
            #mientras
            aux = @Head_
            while(aux.Next_!=@Tail_)
                aux = aux.Next
            end
            @Tail_ = aux
            aux = @Tail_.Next_
            @Tail_.Next_ = nil
            #fin
            @Size_ = @Size_ - 1
            return aux
        end
    end
    
    def each
        aux = @Head_
        while(aux !=nil)
            yield aux
            aux = aux.Next_
        end
    end
    
    def to_s
        str = "Soy la #{self.class}\nCon tamaño: #{@Size_}\n\n"
        self.each do |n|
            str << "\t#{n}\n"
        end
        return str
    end
    
    
end