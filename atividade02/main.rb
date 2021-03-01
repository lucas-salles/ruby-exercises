require_relative 'AnalisadorLinha'

frequencias = Array.new

cont = 0

File.foreach("teste.txt") { |line| frequencias.push(AnalisadorLinha.new(cont += 1, line)) }

frequencias.each { |frequencia| puts frequencia.to_str }
