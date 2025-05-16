class MisteryNumber
  def calculate(operation)
    value = 0
    mistery_number = "?"

    loop do
      expressao = operation.gsub(mistery_number, value.to_s)
      break if eval(expressao.gsub("=", "=="))
      value += 1
    end

    value
  end
end

# Explicando linha a linha:
# value = 0: Começa tentando com o número 0.
# expression.gsub('?', value.to_s): Substitui o ? pela tentativa atual.
# .gsub('=', '=='): Transforma = em ==, porque o eval precisa de comparação lógica.
# eval(...): Executa a expressão.
# Se for verdadeiro, retorna o value.
# Caso contrário, continua tentando com o próximo valor.
# .gsub é um método da classe String que significa "global substitution" (substituição global).
# Ele substitui todas as ocorrências de um padrão por outro dentro de uma string.
