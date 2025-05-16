class Numbers
  def sum_text(numbers_text)
    numbers_text.scan(/[+-]?\d+/).map(&:to_i).sum
  end
end

# Poderia usar .lines ou .scan para pegar os números.
# .lines → pega cada linha do texto e cria um array com elas, serve para quando o texto está mais ordenado.
# .scan → pega todos os números do texto e cria um array com eles, serve para quando o texto não está tão ordenado.
# .map(&:to_i) → transforma cada elemento do array em um número inteiro.
# .sum → soma todos os elementos do array.

# Exemplo:
# text = "Valores: +7, -3, +10, -0 e outros como 100 e -200."
# text.scan(/[+-]?\d+/)
# => ["+7", "-3", "+10", "-0", "100", "-200"]
