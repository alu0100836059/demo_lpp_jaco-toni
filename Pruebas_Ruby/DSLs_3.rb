class Recipe
  attr_accessor :name, :ingredients, :instructions

  # &block nos obliga a pasar un bloque y dentro del método, instance_eval &block
  # nos permite evaluar el bloque en el contexto de quién lo recibe, por lo que
  # podremos acceder a las variables de instancia.
  def initialize(name, &block)
    self.name = name
    self.ingredients = []
    self.instructions = []

    instance_eval &block
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

  def ingredient(name, options = {})
    ingredient = name
    ingredient << " (#{options[:amount]})" if options[:amount]

    ingredients << ingredient
  end

  def step(text, options = {})
    instruction = text
    instruction << " (#{options[:during]})" if options[:during]

    instructions << instruction
  end
end

# Como vemos, aquí reside la gran diferencia, y es que, gracias a
# instance_eval no necesitamos referenciar al objeto creado, llamando a sus
# métodos (r.ingredient ...) si no que el bloque se ejecuta "dentro", en el
# ámbito del objeto creado, por lo que no hace falta referir a qué ingredient
# de que objeto quiero acceder, si no que se hará sobre el objeto per sé.
mac_and_cheese = Recipe.new("Noodles and Cheese") do
  ingredient "Water",   :amount => "2 cups"
  ingredient "Noodles", :amount => "1 cup"
  ingredient "Cheese",  :amount => "1/2 cup"

  step "Heat water to boiling.",        :during => "5 minutes"
  step "Add noodles to boiling water.", :during => "6 minutes"
  step "Drain water."
  step "Mix cheese in with noodles."
end

puts mac_and_cheese
