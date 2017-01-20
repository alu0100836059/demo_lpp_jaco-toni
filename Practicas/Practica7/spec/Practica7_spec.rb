require "spec_helper"

describe Practica7 do
  before(:all) do
    @Nodo = Nodo.new(7)
    @Nodo1 = Nodo.new(2)
    @lista = Lista.new()
    @lista.push_end(@Nodo)
    @lista.push_end(@Nodo1)
  end
  
  it "has a version number" do
    expect(Practica7::VERSION).not_to be nil
  end
  describe "NODO" do
    it "un nodo debe de tener un siguiente" do
      expect(@Nodo.Next_).not_to eq(nil)
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
    end
    
    it "La lista tiene un Tail_" do
      expect(@lista.Tail_).not_to be nil
    end
    
    it "La lista se puede mostrar" do
      puts @lista
    end
    
    it "Se puede añadir un elemento por la cola" do
      
    end
    
    it "Se puede añadir un elemento por el head" do
    
    end
    
    it "Se puede extraer un elemento por la cola" do
    
    end
    
    it "Se puede extraer un elemento por el head" do
    
    end
  end

end
