# Se pretende implementar un lenguaje específico de dominio que nos permita
# llevar un planing de las tareas por realizar.

# NO POR AHORA
# En cuanto a la jerarquía de clases, tendremos una clase Tarea que describirá
# las tareas generales y, heredando de esta tendremos tareas más específicas como
# pueden ser Tareas_Uni, Tareas_Personales...

# Hasta no contemplar el manejo de fechas, estas serán tratadas como strings con
# el formato "dd-mm-aaaa"



# Parte sin modificaciones de DSLs
# class Tarea
#   include Comparable
#   attr_accessor :nombre_tarea, :fecha, :hora, :descripcion, :lugar
#
#   def initialize n, f, h, d, l
#     nombre_tarea = n
#     fecha = f
#     hora = h
#     descripcion = d
#     lugar = l
#   end
#
#   # SIGUIENTE MEJORA: ORDENAR POR HORA AQUELLOS QUE COINCIDEN EN FECHA
#   def <=> other
#     self.fecha <=> other.fecha
#   end
#
#   def to_s
#     "\n--- #{nombre_tarea} el día #{fecha} a las #{hora} en #{lugar}.\n\n"+
#     "\tDescripción de la tarea:\n\n\t#{descripcion}\n\n"
#   end
#
# end
#
# examen_lpp = Tarea.new "Examen_lpp", "24-01-2017", "9:30", "Realización del examen "+
#                        "final de LPP con Coromoto", "ULL"
#
# examen_sytw = Tarea.new "Examen_sytw", "23-01-2017", "9:00", "Realización del examen "+
#                         "de la PRIMERA parte de la asignatura.","ULL"
#
# proyecto_sytw = Tarea.new "Presentación proyecto_sytw", "23-01-2017", "11:00", "Defensa "+
#                           "del proyecto de SYTW.", "Despacho Casiano"
#
# class Agenda
#   attr_accessor :lita_tareas
#   def initialize *l_t
#     @lista_tareas = []
#     l_t.each.with_index do |x, i|
#       @lista_tareas[i] = x
#     end
#     @lista_tareas.sort!
#   end
#
#   def to_s
#     # Se ha hecho así porque sin concatenar, llamando simplemente a puts x dentro
#     # del bloque, se imprimía también la referencia al objeto Agenda
#     salida = ""
#     @lista_tareas.each {|x| salida += x.to_s + "\n\n"}
#     salida
#   end
# end
#
# enero = Agenda.new examen_lpp, examen_sytw, proyecto_sytw
#
# puts enero

#### Final parte sin modificar ####


class Tarea
  include Comparable
  attr_accessor :nombre_tarea, :f, :h, :d, :l

  def initialize n, &block
    self.nombre_tarea = n
    self.f = ""
    self.h = ""
    self.d = ""
    self.l = ""

    if block_given?
      if block.arity == 1
        yield self
      else
        instance_eval &block
      end
    end
  end

  # SIGUIENTE MEJORA: ORDENAR POR HORA AQUELLOS QUE COINCIDEN EN FECHA
  def <=> other
    self.f <=> other.f
  end

  def fecha texto, opciones = {}
    self.f = texto
  end

  def hora texto, opciones = {}
    self.h = texto
  end

  def descripcion texto, opciones = {}
    self.d = texto
  end

  def lugar texto, opciones = {}
    self.l = texto
  end

  def to_s
    "\n--- #{nombre_tarea} el día #{f} a las #{h} en #{l}.\n\n"+
    "\tDescripción de la tarea: #{d}\n\n"
  end

end

examen_bdd = Tarea.new "Examen_bdd" do |x|
  x.fecha "28-01-2017"
  x.hora "9:00"
  x.descripcion "Examen de BDD con Tirso"
  x.lugar "ULL"
end

examen_lpp = Tarea.new "Examen_lpp" do
  fecha         "24-01-2017"
  hora          "9:30"
  descripcion   "Realización del examen final de LPP con Coromoto"
  lugar         "ULL"
end

examen_sytw = Tarea.new "Examen_sytw" do |dummy|
  dummy.fecha         "23-01-2017"
  dummy.hora          "9:00"
  dummy.descripcion   "Realización del examen de la PRIMERA parte de la asignatura"
  dummy.lugar         "ULL"
end

proyecto_sytw = Tarea.new "Proyecto_sytw" do
  fecha         "23-01-2017"
  hora          "11:00"
  descripcion   "Defensa del proyecto de Sistemas y Tecnologías Web"
  lugar         "Despacho del profesor: Casiano Rodríguez"
end



class Agenda
  attr_accessor :lita_tareas
  def initialize *l_t
    @lista_tareas = []
    l_t.each.with_index do |x, i|
      @lista_tareas[i] = x
    end
    @lista_tareas.sort!
  end

  def to_s
    # Se ha hecho así porque sin concatenar, llamando simplemente a puts x dentro
    # del bloque, se imprimía también la referencia al objeto Agenda
    salida = ""
    @lista_tareas.each {|x| salida += x.to_s + "\n\n"}
    salida
  end
end

enero = Agenda.new examen_lpp, examen_sytw, examen_bdd, proyecto_sytw

puts enero
