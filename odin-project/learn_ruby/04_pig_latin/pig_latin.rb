def translate text
  words = text.split(" ")
  words.map! { |word| pig word }
  words.join(" ")
end

def pig word
  word = word.downcase.split("")
  vowels = "aeiou"
  is_vowel = false
  new_word = []
  while !is_vowel
    letter = word[0]
    if vowels.include? letter
      word.push("ay")
      is_vowel = true
    elsif letter == "y"
      word.push("yay")
      is_vowel = true
    elsif (word[0] + word[1]) == "qu"
      word.push(word.shift(2))
      word.push("ay")
      is_vowel = true
    else
      word.push(word.shift())
    end
  end
  word.join("")
end
