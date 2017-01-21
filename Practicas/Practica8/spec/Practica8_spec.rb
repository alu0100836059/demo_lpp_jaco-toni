require "spec_helper"

describe Practica8 do
  before(:each) do
    @Nodo = Nodo_doble.new(7)
    @Nodo1 = Nodo_doble.new(2)
    @Nodo2 = Nodo_doble.new(4)
    @lista = Lista_doble.new()
    @lista.push_end(@Nodo)
    @lista.push_end(@Nodo1)
    @lista.push_end(@Nodo2)
    @m1 = Comida.new("maccarrones","1 medio cucharon",200)
    @m2 = Comida.new("escalope","1 pequeño",100)
    @m3 = Comida.new("ensalada","1 grande", 180)
    @m4 = Comida.new("pan de trigo","2 rebanadas",20)
    
    @menu_por_edades = Menu_por_edad.new("ALMUERZO","(30-35%)",@m1,@m2,@m3,@m4,785.9,19,34,47,"de 4 a 8 años")
    @menu_por_alimen = Menu_por_alimentos.new("ALMUERZO","(30-35%)",@m1,@m2,@m3,@m4,785.9,19,34,47,"vegetarianos asquerosos")
  end
  it "has a version number" do
    expect(Practica8::VERSION).not_to be nil
  end

  describe "NODO" do
    it "un nodo debe de tener un siguiente" do
      expect(@Nodo.Next_).not_to eq(nil)
      expect(@Nodo2.Next_).to eq(nil)
    end
    
    it "un nodo debe de tener un previo" do
      expect(@Nodo2.Prev_).not_to eq(nil)
      expect(@Nodo.Prev_).to eq(nil)
    end
    it "un nodo debe de tener un dato" do
      expect(@Nodo.Data_).to eq(7)
    end
    
    it "Se puede mostrar un nodo" do
      puts @Nodo
    end 
  end
  
  describe "LISTA" do
    it "La lista tiene un Head_" do
      expect(@lista.Head_).not_to be nil
      expect(@lista.Head_.Data_).to eq(7)
    end
    
    it "La lista tiene un Tail_" do
      expect(@lista.Tail_).not_to be nil
      expect(@lista.Tail_.Data_).to eq(4)
    end
    
    it "La lista se puede mostrar" do
      puts @lista
    end
    
    it "Se puede añadir un elemento por la cola" do
      aux = Nodo_doble.new(1)
      @lista.push_end(aux)
      expect(@lista.Tail_).to eq(aux)
      expect(@lista.Size_).to eq(4)
    end
    
    it "Se puede añadir un elemento por el head" do
      aux = Nodo_doble.new(1)
      @lista.push_start(aux)
      expect(@lista.Head_).to eq(aux)
      expect(@lista.Size_).to eq(4)
    end
    
    it "Se puede extraer un elemento por la cola" do
      prob = @lista.Tail_
      aux = @lista.pop_end()
      expect(aux).to eq(prob)
    end
    
    it "Se puede extraer un elemento por el head" do
      prob = @lista.Head_
      aux = @lista.pop_start
      expect(aux).to eq(prob)
    end
  end
  
  describe "Pruebas de herencia sobre menus(Prct6)" do
    it "El menu por edades tiene una edad definina" do
      expect(@menu_por_edades.edades_).not_to be nil
    end
    it "El menu por alimentos tiene un grupo de alimentos asociados" do
      expect(@menu_por_alimen.alimentos_).not_to be nil
    end
    it "El menu por edades se muestra correctamente" do
      puts @menu_por_edades
    end
    it "el menu por alimentos se muestra correctamente" do
      puts @menu_por_alimen
    end
  end
end
