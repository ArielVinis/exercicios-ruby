class Sudoku
  def check(list)
    list.sort == (1..9).to_a
  end
end

# list.sort → ordena a lista
# (1..9).to_a → cria um array com os números de 1 a 9
# list.sort == (1..9).to_a → verifica se a lista está ordenada e contém todos os números de 1 a 9
# O método .to_a no Ruby é usado para converter um objeto em um array, quando esse objeto pode ser representado como uma coleção de elementos.
