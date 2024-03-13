$iterations = 0
#Binary search. Only works on sorted collections of integers
class BinarySearch
  def BinarySearchIterative(array = [0, 1, 2, 3, 4, 5, 6, 7], target)
    left = 0    #First index
    right = array.length()  #Last index
    while (left <= right)
        $iterations += 1
      middle = left + ((right - left) / 2)
      if array[middle] == target
        return middle
      elsif array[middle] < target
        left = middle + 1
      else
        right = middle - 1
      end
    end

    #Will return if the value is not found
    -1
  end
end
class Stopwatch
$start = 0
finish = 0
def startWatch
    $start = Time.now
end
def endWatch
    finish = Time.now
    return (finish - $start) * 1000
end
end
if __FILE__ == $0
array1 = [14, 7, 20, 5, 12, 3, 18, 10, 1, 16, 6, 19, 2, 8, 17, 9, 11, 4, 15, 13].sort
watch = Stopwatch.new()
binSearch = BinarySearch.new()
watch.startWatch()
puts "Found 16 in #{array1} at #{binSearch.BinarySearchIterative(array1, 16)}"
puts "#{watch.endWatch()}ms"
watch.startWatch()
puts "Found 10 in [0,2,4,6,8,10,12,14,16,18,20] at #{binSearch.BinarySearchIterative([0,2,4,6,8,10,12,14,16,18,20], 10)}"
puts "#{watch.endWatch()}ms"
end
