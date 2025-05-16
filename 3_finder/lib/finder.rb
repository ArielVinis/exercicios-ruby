class Finder
  def index_of(list, value)
    # list.each_index - Itera sobre os índices da lista (0, 1, 2, etc)
    # select - Filtra apenas os índices que satisfazem a condição
    # { |i| } - Bloco que define a condição para cada índice i
    # list[i] - Obtém o elemento da lista na posição i
    # .include?(value) - Verifica se o elemento contém o valor procurado
    # .include? - Permite ler parte da string 
    list.each_index.select { |i| list[i].include?(value) }
  end
end