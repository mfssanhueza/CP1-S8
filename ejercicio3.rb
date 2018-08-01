def contador_palabras (archivo)
  file = File.open(archivo, 'r')
  lines = file.readlines
  words = []
  lines.each do |ele|
    words.push(ele.split(' '))
  end
  print words.flatten.count
  file.close
end

#contador_palabras('ejercicio2.txt')

def contador_palabras_string(archivo, string)
  file = File.open(archivo, 'r')
  lines = file.readlines
  array = []
  lines.each do |ele|
    array.push(ele.split(' '))
  end
  words = array.flatten.map(&:upcase)
  puts words.include?(string.upcase)
  file.close
end
contador_palabras_string('ejercicio2.txt', 'galaxias')
