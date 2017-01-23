require "spec_helper"
require "spec_helper"

describe Practica10 do
  it "has a version number" do
    expect(Practica10::VERSION).not_to be nil
  end

  before(:each) do
    @m1 = Comida.new("maccarrones","1 medio cucharon",200)
    @m2 = Comida.new("escalope","1 pequeño",100)
    @m3 = Comida.new("ensalada","1 grande", 180)
    @m4 = Comida.new("pan de trigo","2 rebanadas",20)
    
    @menu = Menu.new("ALMUERZO","(30-35%)",@m1,@m2,@m3,@m4,785.9,19,34,47)
  end
  
  describe "Pruebas de Comida" do
    it "Debe existir la descripcion de los platos" do
      aux = @menu.get_platos()
      aux.each do |n|
        expect(n.Nombre_).not_to be nil
      end
    end
    it "Debe existir la porcion recomendada de un plato" do
      aux = @menu.get_platos()
      aux.each do |n|
        expect(n.Porcion_).not_to be nil
      end
    end
    it "Debe existir la ingesta para un plato" do
      aux = @menu.get_platos()
      aux.each do |n|
        expect(n.Cantidad_).not_to be nil
      end
    end
  end
  describe "Pruebas de Menu" do
    it "Debe existir un titulo para el menu" do
      expect(@menu.get_nombre()).not_to be nil
    end
    it "Debe existir el porcentaje que el menu representa para la ingesta" do
      expect(@menu.get_porcentaje).not_to be nil
    end
    it "Debe de existir un conjunto de platos" do
      expect(@menu.Platos_.instance_of? Array).to eq(true)
      expect(@menu.Platos_).not_to be nil
    end
    it "Debe existir un valor calorico total" do
      expect(@menu.get_vct).not_to be nil
    end
    it "debe existir el porcentaje de grasas" do
      expect(@menu.get_por_fat).not_to be nil
    end
    it "debe existir el porcentaje de hidratos" do
      expect(@menu.get_por_hydr).not_to be nil
    end
    it "debe existir el porcentaje de proteinas" do
      expect(@menu.get_por_prote).not_to be nil
    end
    it "Se puede mostrar el menu" do
      puts @menu
    end
    it "Se puede definir una funcion para mostrar el menu por hilos" do
      @menu.mostrar_por_hilos
    end
    
    
    it "debe existir el metodo para obtener el nombre" do
      puts "sin definir"
    end
    it "debe existir el metodo para obtener el porcentaje" do
      puts "sin definir"
    end
    it "debe existir el metodo para obtener el conjunto de platos" do
      puts "sin definir"
    end
    it "debe existir el metodo para obtener el VCT" do
      puts "sin definir"
    end
    it "debe existir el metodo para obtener el porcentaje de grasa" do
      puts "sin definir"
    end
    it "debe existir el metodo para obtener el porcentaje de hidratos" do
      puts "sin definir"
    end
    it "debe existir el metodo para obtener el porcentaje de proteinas" do
      puts "sin definir"
    end
  end
end
