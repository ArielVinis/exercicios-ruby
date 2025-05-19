class Uri
  attr_reader :code_product, :units_product, :prices_product

  # Para inicializar as propriedades de uma classe podemos usar o método initialize
  # que é chamado antes de qualquer método.
  def initialize(code_product:, units_product:, prices_product:)
    @code_product = code_product
    @units_product = units_product
    @prices_product = prices_product
  end

  # O método zip cria um array de arrays de acordo com seu índice, exemplo:
     # a = [1, 2, 3]
     # b = [4, 5, 6]
     # a.zip(b) = [[1, 4], [2, 5], [3, 6]]

  # .map gera um novo array multiplicando cada array de arrays gerando os valores de cada item comprado
  # .reduce pega esses valores dos itens comprados e soma-os de volta para um resultado final
  # .then passa o parâmetro q está entre | q é o resultado da expressão anterior
  def calculate_purchases
    units_product.zip(prices_product)
                 .map { |arr| arr.reduce(:*) }
                 .reduce(:+)
                 .then { |total| "VALOR A PAGAR: R$ #{format('%.2f', total)}" }
  end
end
