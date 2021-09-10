require 'pry-byebug'
def merge_sort(arr)
  if arr.size == 1
    arr
  else
    list1 = merge_sort(arr[0..(arr.size/2 - 1)])
    list2 = merge_sort(arr[arr.size/2..arr.length - 1])
    merge2(list1, list2)
  end
end

# def merge(list1, list2)
#   output = []
#   left_count = 0
#   right_count = 0
#   count = 0
#   while count < (list1.length + list2.length)
#     # left half is already inserted into output, insert sorted right half
#     if left_count > list1.length - 1
#       output.push(list2[right_count])
#       right_count += 1
#     # right half is already inserted into output, insert sorted left half
#     elsif right_count > list2.length - 1
#       output.push(list1[left_count])
#       left_count += 1
#     elsif list1[left_count] < list2[right_count]
#       output.push(list1[left_count])
#       left_count += 1
#     else
#       output.push(list2[right_count])
#       right_count += 1
#     end
#     count += 1
#   end
#   output
# end

def merge2(list1, list2)
  output = []
  until list1.empty? || list2.empty?
    list1.first <= list2.first ? output.push(list1.shift) : output.push(list2.shift)
  end

  output + list1 + list2
end

array = [4, 2, 1, 8, 9, 10, 12, 3, 5]
p "Array to sort: #{array}"
p "Sorted array: #{merge_sort(array)}"
