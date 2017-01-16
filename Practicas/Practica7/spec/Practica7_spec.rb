require "spec_helper"

describe Practica7 do
  before(:all) do
    @Nodo = Nodo.new(7)
    @lista = Lista.new()
    @lista.push_end(@Nodo)
  end
  
  it "has a version number" do
    expect(Practica7::VERSION).not_to be nil
  end
  describe "NODO" do
    it "un nodo debe de tener un siguiente" do
      expect(@Nodo.Next_).to eq(nil)
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
  end

end
