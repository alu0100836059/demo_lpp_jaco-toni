# Final DSL de coro

class Recipe
  attr_accessor :name, :ingredients, :instructions

  def initialize(name, &block)
    self.name = name
    self.ingredients = []
    self.instructions = []

    # Mediante block_given controlamos que nos han pasado un bloque
    if block_given?
      # Mediante block.arity controlamos el número de argumentos aceptados
      # por el bloque
      # Si solo acepta uno
      # REFERENCIA AL EJEMPLO DSLs_2.rb
      if block.arity == 1
        # delegamos el control al bloque
        yield self
      else
       # Si NO acepta uno, lo evaluamos en el entorno del objeto
       # REFERENCIA AL EJEMPLO DSLs_3.rb
       instance_eval(&block)
      end
    end
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

# En este caso tira del instance_eval del else puesto que no estamos
# pasando un bloque que acepte UN argumento.
mac_and_cheese = Recipe.new("Noodles and Cheese") do
  ingredient "Water",   :amount => "2 cups"
  ingredient "Noodles", :amount => "1 cup"
  ingredient "Cheese",  :amount => "1/2 cup"

  step "Heat water to boiling.",        :during => "5 minutes"
  step "Add noodles to boiling water.", :during => "6 minutes"
  step "Drain water."
  step "Mix cheese in with noodles."
end

# Nuevo ejemplo para comprobar la valided cuando le pasamos un bloque con
# un argumento, si realmente hace el yield
carbonara = Recipe.new("Spaghetti a la bolognesa") do |r|
  r.ingredient "Spaghetti",   :amount => "200 gr"
  r.ingredient "Carne picada", :amount => "150 gr"
  r.ingredient "Tomates",  :amount => "2 piezas"

  r.step "Heat water to boiling.",        :during => "5 minutes"
  r.step "Add Spaghetties to boiling water.", :during => "6 minutes"
  r.step "Drain water."
  r.step "Cocina la carne con los tomates.", :during => "30 minutes"
  r.step "Mix todo y que cunda!!!"
  end
# Primer caso: HACIENDO USO DE instance_eval
puts mac_and_cheese
# Segundo caso: HACIENDO USO DE parámetros de bloque
puts carbonara
