class Word
  VOGAIS = "aeiouáéíóúàèìòùãõâêîôûäëïöüy"
  CONSOANTES = "bcdfghjklmnpqrstvwxz"

  def vowels_count(phrase)
    phrase.downcase.count(VOGAIS)
  end

  def consonants_count(phrase)
    phrase.downcase.count(CONSOANTES)
  end
end
