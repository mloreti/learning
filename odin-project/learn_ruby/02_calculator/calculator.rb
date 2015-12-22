def add num1, num2
  num1 + num2
end

def subtract num1, num2
  num1 - num2
end

def sum arr
  sum = 0
  arr.each do |num|
    sum += num
  end
  sum
end

def multiply num1, *nums
  product = num1
  nums.each do |x|
    product *= x
  end
  product
end

def power base, exp
  base**exp
end

def factorial num
  product = 1
  while num >= 1
    product *= num
    num -= 1
  end
  product
end
