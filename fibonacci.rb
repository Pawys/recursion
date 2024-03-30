def fibs(n)
  arr = [0,1]
  (n - 2).times {|num| arr.push(arr[num] + arr[num + 1])}
  arr
end

def fibs_recursive(arr = Array.new(),n)
  n -= 1
  if n == 0
    return [0]
  elsif n == 1
    return [0,1]
  else
    arr = fibs_recursive(arr,n)
    result = arr[-1] + arr[-2]
  end
  arr.push(result)
  return arr
end
