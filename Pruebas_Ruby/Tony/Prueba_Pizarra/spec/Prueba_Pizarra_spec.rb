require "spec_helper"

describe PruebaPizarra do
  it "has a version number" do
    expect(PruebaPizarra::VERSION).not_to be nil
  end
  
  before(:all) do
    @comida1 = Comida.new("macarrones","medio tazon",100)
    @comida2 = Comida.new("spaggeti","medio tazon",100)
    @comida3 = Comida.new("pescado","medio tazon",100)
    @comida4 = Comida.new("carne","medio tazon",100)
    @comida5 = Comida.new("dulces","medio tazon",100)
    
    @pizarra = Pizarra.new()
end

  it "Se puede añadir a la lista" do
    @pizarra.add_comida(@comida1,@comida2,@comida3,@comida4,@comida5)
    expect(@pizarra.Bloque_.count()).to eq(5)
  end
end
