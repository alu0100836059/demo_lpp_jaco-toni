# Progama factorial que toma el valor del argumento con el que es ejecutado

def factorial numero
  if numero == 0
    1
  else
    numero * (numero -1)
  end
end

# Tomamos el primer argumento y lo parseamos a entero,
# por lo que también funcionaría: ruby factorial_ARGV.rb "10"
puts factorial(ARGV[0].to_i)
