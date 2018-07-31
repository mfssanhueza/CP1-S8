def creador_html(string1, string2)
file = File.new('index.html', 'w')
file.write "<p>#{string1}</p>"
file.write "<p>#{string2}</p>"
file.close
end

creador_html('Hola mundo', 'Hola a todos')
