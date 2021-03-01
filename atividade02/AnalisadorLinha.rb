class AnalisadorLinha
    attr_accessor :linha, :conteudo, :frequencia

    def initialize(linha, conteudo)
        @linha = linha
        @conteudo = conteudo
        
        gerarAnalise
    end

    def gerarAnalise
        palavras = @conteudo.gsub(/[\p{M}\p{P}\p{S}\p{Z}\p{C}\d]/, ' ')
        palavras = palavras.split(' ')
        palavras = palavras.map(&:downcase)
        cont = Hash.new(0)
        palavras.each { |palavra| cont[palavra] += 1 }

        @frequencia = cont.select { |key, value| value == cont.values.max }
    end

    def to_str
        "Linha: #{@linha}, Frequência: #{@frequencia}"
    end
end
