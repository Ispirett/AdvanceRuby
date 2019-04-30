module Enumerable
  def my_each
    for e in self
      yield e if block_given?
    end

  end

  def my_each_with_index &block
    i = 0
    for e in self
      yield e, i
      i+=1
      end
  end

  def my_select 
    self.my_each do  | i |
      yield i if block_given?
    end
  end

  def my_all? 
    return true unless block_given?
    if self.is_a? Hash
        self.my_each { |k, v| return false if !yield k, v }
    else
        self.my_each { |el| return false if !yield el }
    end
    true
  end

  def my_any? 
    return true unless block_given?
        if self.is_a? Hash
            self.my_each { |k, v| return true if yield k, v }
        else
            self.my_each { |el| return true if yield el }
        end
        false
  end


end




 arr = [2,3,4, 4, 34, 6, 7, 5, 3,2 ]
 arr2 = ["212","@1212", "99"]

a = {
  t: 2,
  b: 4,
}

puts arr2.my_any? { |i|  i.size == 4}