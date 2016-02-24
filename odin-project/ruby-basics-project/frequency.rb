def substrings string, array
  freq = Hash.new(0)
  array.each { |word| freq[word] = string.scan(word).length }
  freq.each do |key,value|
    if value == 0
      freq.delete(key)
    end
  end
  freq.sort_by { |key,value| value }.reverse.to_h
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings "Howdy partner, sit down! How's it going?", dictionary
