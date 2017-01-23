require "spec_helper"

describe Practica9 do
  it "has a version number" do
    expect(Practica9::VERSION).not_to be nil
  end
  before(:each) do
        @comida = Comida_dls.new("Macarrones","1 1/2 cucharon",200)
    
        @menu = Menu_dls.new do
            titulo "Almuerzo"
            por_dieta :min => 30, :max => 40
            comida :descripcion_ => "Macarrones con salsa de tomate y queso parmesano",
                   :porcion_reco_ => "1 1/2 cucharon",
                   :peso_ => 200
            comida :descripcion_ => "Escalope con ternera",
                   :porcion_reco_ => "1 bistec mediano",
                   :peso_ => 200
            resto  :VCT =>785.9,
                   :p_proteinas => 19 ,
                   :p_grasas => 34,
                   :p_hidratos => 47
        end

        
  end
  
  describe "Comidas" do
    it "Una comida debe de tener description" do
      expect(@comida.Descrip_).not_to be nil
    end
    it "Una comida debe de tener una porcion recomendada" do
      expect(@comida.Por_reco_).not_to be nil
    end
    it "Una comida debe de tener un peso" do
      expect(@comida.Peso_).not_to be nil
    end
    it "Una comida debe de poder mostrarse" do
      puts @comida
    end
  end
  
  describe "Menu" do
    it "Un menu debe de tener nombre" do
      expect(@menu.Nombre_).not_to be nil
    end
    
    it "Un menu debe de tener Porcentaje" do
      expect(@menu.Porcentaje_).not_to be nil
      expect(@menu.Porcentaje_.count()).to eq(2)
    end
    
    it "Un menu debe de tener VCT" do
      expect(@menu.VCT).not_to be nil
    end
    
    it "Un menu debe de tener Porcentaje de grasa" do
      expect(@menu.Por_fat).not_to be nil
    end
    
    it "Un menu debe de tener Porcentaje de hidratos" do
      expect(@menu.Por_hydr).not_to be nil
    end
    
    it "Un menu debe de tener Porcentaje de proteinas" do
      expect(@menu.Por_prote).not_to be nil
    end
    
    it "Un menu debe de poder mostrarse" do
      puts @menu
    end
    
    it "Deben de poder definirse menus agrupados por alimentos" do
        @menu_por_alimentos = Menu_dls.new do
            titulo "Almuerzo", :alimentos => "vegetariano"
            por_dieta :min => 30, :max => 40
            comida :descripcion_ => "Macarrones con salsa de tomate y queso parmesano",
                   :porcion_reco_ => "1 1/2 cucharon",
                   :peso_ => 200
            comida :descripcion_ => "Escalope con ternera (de tofu)",
                   :porcion_reco_ => "1 bistec mediano",
                   :peso_ => 200
            resto  :VCT =>785.9,
                   :p_proteinas => 19 ,
                   :p_grasas => 34,
                   :p_hidratos => 47
        end
    end
    
    it "Deben de poder definirse menus agrupados por edad" do
        @menu_por_edades = Menu_dls.new do
            titulo "Almuerzo", :edades => "de 2 a 4 años!"
            por_dieta :min => 30, :max => 40
            comida :descripcion_ => "Macarrones con salsa de tomate y queso parmesano",
                   :porcion_reco_ => "1 1/2 cucharon",
                   :peso_ => 200
            comida :descripcion_ => "Escalope con ternera (de tofu)",
                   :porcion_reco_ => "1 bistec mediano",
                   :peso_ => 200
            resto  :VCT =>785.9,
                   :p_proteinas => 19 ,
                   :p_grasas => 34,
                   :p_hidratos => 47
        end
    end
    it "Se puede definir un menu usando bloque (*.arity==1)" do
            @menu = Menu_dls.new do |r|
            r.titulo "Almuerzo"
            r.por_dieta :min => 30, :max => 40
            r.comida :descripcion_ => "Macarrones con salsa de tomate y queso parmesano",
                   :porcion_reco_ => "1 1/2 cucharon",
                   :peso_ => 200
            r.comida :descripcion_ => "Escalope con ternera",
                   :porcion_reco_ => "1 bistec mediano",
                   :peso_ => 200
            r.resto  :VCT =>785.9,
                   :p_proteinas => 19 ,
                   :p_grasas => 34,
                   :p_hidratos => 47
        end
    end
  end
  
  
end
