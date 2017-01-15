# Comprobador de patrones, primero deberemos introducir la cadena y
# y a continuación el patón  a "casar". De haber coincidencias se
# resaltarán en la consola.


# Para representar el texto normal
en = "\033[m"
# Para representar el texto en inverted video ("highlight")
st = "\033[7m"

puts "Enter an empty string at any time to exit."

while true
  print "str> "; STDOUT.flush; str = gets.chop
  break if str.empty?
  print "pat> "; STDOUT.flush; pat = gets.chop
  break if pat.empty?
  re = Regexp.new(pat)
  # gsub-> g de global para sustituir TODAS las coincidencias, no solo la 1ª
  # =>     sub: sustituye
  puts str.gsub(re,"#{st}\\&#{en}")
end
