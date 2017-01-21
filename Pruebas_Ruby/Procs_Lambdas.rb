# Ejemplos sencillos para la comprensión de los bloques así como la clase PROC y
# su potencial.

puts "----\tCreación de Procs\t----"

puts "a) Asociando un bloque con un argumento prefijado por &"

def convertir_a_proc &b
  b
end


restador = convertir_a_proc {|x, y| x-y}
puts restador.call 9,2

###

puts "\nb) Utilizando el constructor de la clase Proc -> Proc.new"

multiplicar = Proc.new {|x, y| x*y}

puts multiplicar.call 2, 4

###
puts "\nProbando la obligatoridad de los argumentos en Procs y Lambdas"
args_variables_proc = Proc.new {|a,b,c,d| a+b+c+d}
args_fijos_lambda = ->(a,b,c,d){a+b+c+d}

puts "Proc nos permite llamarlo con más argumentos, solo utiliza los necesarios"
puts args_variables_proc.call 1,2,3,4,5,6,7,8,9
puts "Lambda NO nos permite llamarlo con más argumentos, tienen que ser exactamente los mismos"
puts args_fijos_lambda.call 1,2,3,4
