module Enumerable
  def my_each
    for e in self
      yield e if block_given?
    end

  end

end




arr = [2,3,4]
arr.my_each

