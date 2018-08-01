def contador_lineas()
file = File.open('ejercicio2.txt', 'r')
movies = file.readlines
print movies.count
file.close
end

puts contador_lineas
