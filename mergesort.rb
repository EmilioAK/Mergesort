def merge(arr1, arr2, result = [])
  if arr1.first > arr2.first
    result << arr2.shift
    return result + arr1 if arr2.empty?
  else
    result << arr1.shift
    return result + arr2 if arr1.empty?
  end
  merge(arr1, arr2, result)
end

def merge_sort(arr)
  return arr if arr.size < 2

  first_half, second_half = arr.each_slice((arr.size / 2.0).round).to_a
  merge(merge_sort(first_half), merge_sort(second_half))
end
