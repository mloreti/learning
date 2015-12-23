def titleize input
  words = input.split(" ")
  words.each do |word|
    if words.index(word) > 0
      unless word == "and" or word == "is" or word == "a" or word == "the" or word == "over"
        word.capitalize!
      end
    else
      word.capitalize!
    end
  end
  words.join(" ")
end

def echo input
  input
end

def first_word input
  input = input.split(" ")
  input[0]
end

def start_of_word input, amount
  input = input.split("")
  output = [];
  for i in 1..amount
    output.push(input[i-1])
  end
  output.join()
end

def repeat input, mult = 2
  output = []
  for i in 1..mult
    output.push(input)
  end
  output.join(" ")
end

def shout input
  input.split("").each { |letter| letter.capitalize! }.join()
end
