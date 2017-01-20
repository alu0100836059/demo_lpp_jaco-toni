require '../lib/receta'
require 'test/unit'

class Test_receta < Test::Unit::TestCase

  def setup
    @sandwich_m = Receta.new "Sandwich mixto",1,2, ["2 rebanadas de pan", "1 loncha de jamón", "1 loncha de queso", "mantequilla" +
                              " al gusto"], ["Unte de mantequilla uno de los lados de" +
                              " la rebanada de pan.", "Coloque encima la loncha de" +
                              " queso.", "Coloque encima la loncha de jamón.",
                              "Ponga la otra rebanada de pan encima."]

  @salida_esperada_sandwich_m =  "Sandwich mixto\n==============\n\nPorciones: 1"+
                                "\nTiempo de preparación: 2 minutos\n\nIngredientes:\n"+
                                "2 rebanadas de pan, 1 loncha de jamón, 1 loncha de queso, mantequilla" +
                                " al gusto\n\nInstrucciones:\n1) Unte de mantequilla uno de los lados de" +
                                " la rebanada de pan.\n2) Coloque encima la loncha de" +
                                " queso.\n3) Coloque encima la loncha de jamón.\n"+
                                "4) Ponga la otra rebanada de pan encima."

  @salida_esperada_ingredientes = "2 rebanadas de pan, 1 loncha de jamón, 1 loncha de queso, mantequilla" +
                                  " al gusto"

  @salida_esperada_instrucciones = "1) Unte de mantequilla uno de los lados de" +
                                   " la rebanada de pan.\n2) Coloque encima la loncha de" +
                                   " queso.\n3) Coloque encima la loncha de jamón.\n"+
                                   "4) Ponga la otra rebanada de pan encima."
  end

  def tear_down
    #
  end

  def test_formato_general
    assert_equal(@salida_esperada_sandwich_m, @sandwich_m.to_s)
  end

  def test_formato_ingredientes
    assert_equal(@salida_esperada_ingredientes, @sandwich_m.mostrar_ingredientes)
  end

  def test_formato_instrucciones
    assert_equal(@salida_esperada_instrucciones, @sandwich_m.mostrar_instrucciones)
  end
end
