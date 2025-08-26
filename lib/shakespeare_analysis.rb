require_relative 'word_counter'

# Lecture du corpus de Shakespeare (fichier texte)
corpus = File.read("shakespeare.txt")

# a) Analyse des mots les plus fréquents
common_words = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

common_results = word_counter(corpus, common_words)

puts "=== ANALYSE DES MOTS FRÉQUENTS ==="
common_results.each do |word, count|
  puts "#{word} : #{count}"
end

# b) Analyse des gros mots
bad_words = File.read("gros_mots.txt").split("\n")

bad_results = word_counter(corpus, bad_words)

puts "\n=== ANALYSE DES GROS MOTS ==="
bad_results.each do |word, count|
  puts "#{word} : #{count}"
end
