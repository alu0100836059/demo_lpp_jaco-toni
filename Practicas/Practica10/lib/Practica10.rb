require "Practica10/version"
require "/home/ubuntu/workspace/demo_lpp_jaco-toni/Practicas/Practica6/lib/Practica6"



class Menu
    def mostrar_por_hilos
        hilos = []
        @Platos_.each do |n|
            hilos << Thread.new() { puts "#{n}" }
        end
        hilos.each do |x|
            x.join
        end
    end
    
end