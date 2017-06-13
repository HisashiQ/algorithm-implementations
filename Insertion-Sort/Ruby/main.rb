require 'benchmark'

def insertion_sort(arr)
  i = 0
  while i < (arr.size-1) do
    i += 1
    key = arr[i]
    j = i - 1
    while j > 0 && arr[j] > key
      arr[j + 1] = arr[j]
      j -= 1
    end
    arr[j+1] = key
  end
  return arr
end

arr = 10000.times.map { Random.rand(100)  }
speed = Benchmark.bm do |x|
  x.report {insertion_sort(arr)}
end
