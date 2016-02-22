def bub(input)
times = 1
  while times < (input.length) #only loop n-1 times
    for i in 0...(input.length - times) #loop through each item except last (which is largest after first pass)
        if input[i] > input[i+1]
          input[i], input[i+1] = input[i+1], input[i]
        end
    end
    times += 1 #increment by 1
  end
  input #return sorted array
end

array = [1,17,10,8,2,3,7]
puts "Original #{array}"
puts "Sorted   #{bub(array)}"
