def merge_sort(arr)
  if arr.length < 2
    return arr
  else
    mid = (arr.length / 2).to_i
    a = merge_sort(arr[0...mid])
    b = merge_sort(arr[mid..-1])
  end
  merge(a,b)
end

def merge(a,b)
  sorted = Array.new()
  i,j,k = 0,0,0
  while sorted.length < a.length + b.length
    if a[i].nil?
      sorted += b[j..-1]
    elsif b[j].nil?
      sorted += a[i..-1]
    else
      if a[i] < b[j]
        sorted[k] = a[i]
        i += 1
        k += 1
      else
        sorted[k] = b[j]
        j += 1
        k += 1
      end
    end
  end
  sorted
end
