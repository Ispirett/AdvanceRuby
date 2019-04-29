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

  def my_all? &block
    self.my_each do |i|
    return yield i


    end
    
  end


end




 arr = [2,3,4, 4, 34, 6, 7, 5, 3,2 ]
 arr2 = ["212","@1212", "99"]
#arr.my_each_with_index { |e, i| puts  e, " index: #{i}"}
#arr.my_each 

#arr.my_select { | i | puts i if i <= 2}

arr2.my_all? { |i| puts i.size === 2}