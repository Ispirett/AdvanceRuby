
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


def bubble_sort_by(arr)
  (0...(arr.length - 1)).each.with_index do |_item, _i|
    switch = false
    (0...(arr.length - _i - 1)).each.with_index do |_element, _j|

      if arr[_j].length > arr[_j + 1].length
        arr[_j],  arr[_j + 1] = arr[_j + 1] ,arr[_j]
        switch = true
      end
    end
    break if switch === false
  end


end

arr = [2, 3, 4, 65, 87, 9,1,6,767,43,2,32,54,6,575,645654,5]
str_arr = ["microverse", "i" ,"love"]


#bubble sort
bubble_sort(arr)
p arr


#bubble_sort_by
bubble_sort_by(str_arr)
p  str_arr
