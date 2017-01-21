# DSL receta coro v.1
# Este en concreto solo parece que es la clase sin DSL de la que parte para
# la realización del DSL.

class Recipe
  attr_accessor :name, :ingredients, :instructions

  def initialize(name)
    self.name = name
    self.ingredients = []
    self.instructions = []
  end

  def to_s
    output = name
    output << "\n#{'=' * name.size}\n\n"
    output << "Ingredients: #{ingredients.join(', ')}\n\n"

    instructions.each_with_index do |instruction, index|
      output << "#{index + 1}) #{instruction}\n"
    end

    output
  end
end

mac_and_cheese = Recipe.new("Mac and Cheese")

mac_and_cheese.ingredients << "Noodles"
mac_and_cheese.ingredients << "Water"
mac_and_cheese.ingredients << "Cheese"

mac_and_cheese.instructions << "Boil water."
mac_and_cheese.instructions << "Add noodles, boil for six minutes."
mac_and_cheese.instructions << "Drain water."
mac_and_cheese.instructions << "Mix in cheese with noodles."

puts mac_and_cheese
