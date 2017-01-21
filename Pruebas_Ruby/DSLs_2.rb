# Parece como un paso intermedio hasta el DSL

class Recipe
  attr_accessor :name, :ingredients, :instructions

  def initialize(name)
    self.name = name
    self.ingredients = []
    self.instructions = []

    # Añade esta línea que se supone invoca a uno mismo (siendo un bloque el objeto instanciado?!?)
    yield self
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

  # define un setter que acepta uno o dos parámetros
  # el primero de ellos será el ingrediente, y el otro, options
  # nos sirve para poder manejar nuevos parámetros a través del hash
  # tomando los símbolos como índices y así insertar su valor solo en
  # caso de que exista el índice :amount en el hash options ya que
  # por defecto lo inicializamos como un hash vacío
  def ingredient(name, options = {})
    ingredient = name
    # ingredient ahora mismo tiene el nombre, el primer parámetro NECESARIO,
    # nos añade al string después del nombre (cantidad) inyectando la expresión
    # options[:amount] if options[:amount]
    # i.e. nos inserta la cantidad entre paréntesis si es que pasamos una cantidad,
    # i.e. si la posición del hash options con :amount como índice existe.
    ingredient << " (#{options[:amount]})" if options[:amount]

    # Concatenamos el ingrediente a nuestra lista de ingredientes
    ingredients << ingredient
  end

  # Lo mismo exactamente que el anterior caso
  def step(text, options = {})
    instruction = text
    instruction << " (#{options[:during]})" if options[:during]

    instructions << instruction
  end
end

# Recordemos que todos los métodos en Ruby pueden recibir bloques como parámetros, aunque después
# estos se usen o no. En este caso le pasamos el bloque llamando a los métodos
# que hacen de setters optimizados y como hemos visto, se delegará el control al bloque
# al final del método initialize, una vez estén creadas ya las variables que necesitamos
# para que el bloque cumpla su cometido.
mac_and_cheese = Recipe.new("Noodles and Cheese") do |r|
  r.ingredient "Water",   :amount => "2 cups"
  r.ingredient "Noodles", :amount => "1 cup"
  # Vemos que también lo podemos pasar sin una cantidad dada ya que nuestro
  # options = {} inicializa el hash en la declaración de la función.
  r.ingredient "Cheese"

  r.step "Heat water to boiling.",        :during => "5 minutes"
  r.step "Add noodles to boiling water.", :during => "6 minutes"
  r.step "Drain water."
  r.step "Mix cheese in with noodles."
end

puts mac_and_cheese
