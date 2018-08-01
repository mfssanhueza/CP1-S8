def creador_html(string1, string2)
file = File.new('index.html', 'w')
file.write "<p>#{string1}</p>"
file.write "<p>#{string2}</p>"
file.close
end

def creador_html_con_array(string1, string2, arr)
file = File.new('index_array.html', 'w')
file.write "<p>#{string1}</p>"
file.write "<p>#{string2}</p>"
unless arr.empty?
  file.write "<ol>"
  arr.each{|e| file << "<li>#{e}</li>\n"}
  file.write "</ol>"
end
file.close
end

def color_fondo(color)
  file = File.open('index.html', 'r+')
  file.each{|l| file << l.gsub('<p>', "<p style='background-color:#{color}'>")}
end

creador_html('Hola mundo', 'Hola a todos')
creador_html_con_array('Hola mundo', 'Hola a todo el mundo', [1,4,5,7,7])
color_fondo'#0000ff'
