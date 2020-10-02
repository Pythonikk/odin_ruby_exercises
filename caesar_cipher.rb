def replace_letter(char, shift_factor)
  alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

  if alphabet.include?(char) == false
    return char
  else
    while shift_factor + alphabet.index(char) >= alphabet.length do
      shift_factor -= alphabet.length
    end
    alphabet[alphabet.index(char) + shift_factor]
  end
end

def cipher_text(text, shift_factor) 
  ciphered_text = Array.new

  text.split('').each do |item|
    if item == item.upcase
      item.downcase!
      item = replace_letter(item, shift_factor)
      item.upcase!
    else
      item = replace_letter(item, shift_factor)
    end
    ciphered_text << item
  end
  return ciphered_text.join
end

puts "Enter the text you want to cipher: "
text = gets.chomp
puts "Enter the shift factor as a natural number: "
shift_factor = gets.chomp.to_i
puts cipher_text(text, shift_factor)
