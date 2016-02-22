def bubble_sort_by(input)
  times = 1
    while times < (input.length) #only loop n-1 times
      for i in 0...(input.length - times) #loop through each item except last (which is largest after first pass)
          if yield(input[i], input[i+1]) > 1
            input[i], input[i+1] = input[i+1], input[i]
          end
      end
      times += 1 #increment by 1
    end
    p input #return sorted array
end

array = ["hi","hello","hey"]

bubble_sort_by(array) do |left,right|
   left.length - right.length
end
