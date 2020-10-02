# 100 most common English words:
dictionary = %w(the of and a to in is you that it he was for on are as with his they i at be this have from or one had by word but not what all were we when your can said there use an each which she do how their if will up other about out many then them these so some her would make like him into time has look two more write go see number no way could people my than first water been call who oil its now find long down day did get come made may part)

def substrings(string, dictionary)
  results = Hash.new(0)
  words = string.downcase.split(/[\s,.?]/)
  words.each do |word|
    if dictionary.include?(word) 
      results[word] += 1
    end
  end
  return results
end

puts "Enter a word or text to search the dictionary of '100 most common English words': "
input = gets.chomp

p substrings(input, dictionary)
