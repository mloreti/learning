# for i in 1..15
#   if i % 3 == 0 and i % 5 == 0
#     puts i.to_s + ': fizzbuzz'
#   elsif i % 5 == 0
#     puts i.to_s + ': buzz'
#   elsif i % 3 == 0
#     puts i.to_s + ': fizz'
#   end
# end

# def find_fib max
#   fib_numbers = [0,1]
#   fib_evens = []
#   (0..max).each do |i|
#     fib_numbers.push(fib_numbers[i] + fib_numbers[i+1])
#   end
#   fib_numbers.shift
#   fib_numbers.each do |i|
#     if i % 2 == 0
#       fib_evens.push(i)
#     end
#   end
#   puts fib_evens.last
# end
#
# find_fib 14
