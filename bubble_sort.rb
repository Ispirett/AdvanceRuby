def bubble_sort(arr)
    switch = true
    (0...(arr.length - 1)).each.with_index do |_item, _i|
      switch = false
      (0...(arr.length - _i - 1)).each.with_index do |_element, _j|
  
        if arr[_j] > arr[_j + 1]
          arr[_j],  arr[_j + 1] = arr[_j + 1] ,arr[_j]
          switch = true
      end
      end
      break if switch === false
    end
  end
  
  
  def bubble_sort_by arr
        for i in (0...(arr.length))
        for e in (0...(arr.length))
          if block_given?
            if yield(arr[e], arr[i]) > 0  
              arr[i], arr[e] = arr[e], arr[i]     
            end
          else 
            if arr[e].length > arr[i].length   
              arr[i], arr[e] = arr[e], arr[i]     
            end
          end
        end
      end 
       arr
  end
  
  
  
  arr = [2, 3, 4, 65, 87, 9,1,6,767,43,2,32,54,6,575,645654,5]
  str_arr = ["hi","hello","hey"]
  
  bubble_sort(arr)
  
  bubble_sort_by(str_arr) do |l ,r|
    l.length - r.length
  end
  
  bubble_sort_by(str_arr) 
  