module Enumerable

  def my_each
    for i in 0...size
      yield(self[i])
    end
    self
  end

  def my_each_with_index
    for i in 0...size
      yield(self[i], i)
    end
    self
  end

  def my_select
    result = []
    self.my_each { |i| result << i if yield(i) }
    result
  end

  def my_all?
    result = true
    self.my_each { |i| result = false unless yield(i) }
    result
  end

  def my_any?
    result = false
    self.my_each { |i| result = true if yield(i) }
    result
  end

  def my_none?
    result = true
    self.my_each { |i| result = false if yield(i) }
    result
  end

  def my_count
    result = 0
    self.my_each { |i| result += 1 if yield(i) }
    result
  end

  def my_map
    result = []
    self.my_each { |i| result.push(yield(i)) }
    result
  end

  def my_map2(&proc)
    result = []
    self.my_each { |i| result.push(proc.call(i)) }
    result
  end

  def my_map3(proc=nil)
    result = []
    if proc
      self.my_each { |i| result.push(proc.call(i)) }
    else
      self.my_each { |i| result.push(yield(i)) }
    end
    result
  end

  def my_inject
    result = 1
    self.my_each { |i| result = yield(result, i) }
    result
  end

end

arr = [1,2,3,4]
some_proc = Proc.new {|x| x * 3 }


# ----- Testing each method ----- #
puts "My select: #{arr.my_select { |x| x > 1 }}"

puts "My all?: #{arr.my_all? { |x| x > 1 }}"

puts "My any?: #{arr.my_any? { |x| x > 1 }}"

puts "My none?: #{arr.my_none? { |x| x > 5 }}"

puts "My count: #{arr.my_count { |x| x > 2 }}"

puts "My map: #{arr.my_map { |x| x * 2 }}"

puts "My map proc: #{arr.my_map2(&some_proc)}"

puts "My map: #{arr.my_map3 { |x| x * 2 }}"

puts "My inject: #{arr.my_inject { |x, y| x * y }}"


def multiply_els(input)
  input.my_inject{|a,b| a * b }
end

puts "Multiply each el: #{multiply_els([2,4,5])}"
