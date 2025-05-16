class StringUtils
  def wavefy(string)
    string.chars.each_with_index.map do |char, index|
      index.even? ? char.downcase : char.upcase
    end.join
  end
end

# string.chars → quebra a string em um array de letras: ["R", "u", "b", "y"]
# .each_with_index → permite saber o índice de cada letra.
# .upcase → transforma a letra em maiúscula.
# .downcase → transforma a letra em minúscula.
# .even? → verifica se o índice é par.
