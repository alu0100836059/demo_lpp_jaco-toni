class Numero
   attr_accessor :numerador_, :denominador_ 
    def  initialize(*args)
        if(args.count()==0)
            @numerador_ = 0
            @denominador_ = 0
        elsif(args.count()==2)
            @numerador_ = args[0]
            @denominador_ = args[1]
        else
            "fallo de construcctor"
        end
    end  
    
    def to_s
        "el numero es:#{@numerador_}/#{@denominador_}"
    end
end

#numero = Numero.new(1,2)
#puts numero

class Menu
    attr_accessor
end