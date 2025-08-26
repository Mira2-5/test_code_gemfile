def word_counter(corpus, dictionary)

  # Mise en minuscule pour ne pas distinguer les majuscules
  corpus = corpus.downcase
  
  # On supprime les caractères non-alphabétiques (ponctuations, etc.)
  words = corpus.scan(/\b[a-z']+\b/)

  result = Hash.new(0)

  dictionary.each do |word|
    # Pour chaque mot du dictionnaire, on compte le nombre de fois qu’il apparaît
    count = words.count { |w| w.include?(word.downcase) }
    result[word] = count if count > 0
  end

  return result
end



