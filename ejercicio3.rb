def contador_palabras(archivo)
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
  counter = 0
  lines = file.readlines
  lines.each do |line|
    clear_lines = line.gsub('.', '').gsub(':','').split(' ')
    clear_lines.each do |element|
      counter = counter+1 if element.upcase == string.upcase
    end
  end

  file.close
  puts counter
end
contador_palabras_string('ejercicio2.txt', 'galaxias')
