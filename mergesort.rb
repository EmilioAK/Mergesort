def merge_sort(list)
  return list if list.size < 2

  first_half, second_half = split_list_in_two(list)
  merge(merge_sort(first_half), merge_sort(second_half))
end

def split_list_in_two(list)
  [list[0...list.size / 2], list[list.size / 2..-1]]
end

def merge(l1, l2)
  merged_list = []
  merged_list << (l1[0] > l2[0] ? l2.shift : l1.shift) until l1.empty? || l2.empty?
  l1.empty? ? merged_list.concat(l2) : merged_list.concat(l1)
  merged_list
end
