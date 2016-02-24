puts "What message do you want to encrypt?"
word = gets.chomp.downcase
puts "How many letters do you want to shift?"
number = gets.chomp.to_i

def cipher input, key
  alphabet = ('a'..'z').to_a
  new_alphabet = alphabet.rotate(key)

  word = input.split("")
  new_word = ""

  word.each do |letter|
    if !(alphabet.include? letter)
      new_word += letter
    else
      new_word += new_alphabet[alphabet.index(letter)]
    end
  end

  puts "Output: " + new_word.capitalize
end

cipher word, number
