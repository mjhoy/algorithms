# helper function: generate n-length array with random numbers 0-9
makeUnsortedArray = (n) ->
  while n -= 1
    Math.floor(Math.random() * 10)

# Insertion sort
insertionSort = (a) ->
  for j in [1..(a.length - 1)]
    do (j) ->
      key = a[j]
      i = j - 1
      # Insert a[i + 1] into the sorted sequence a[0..i]
      while i >= 0 and a[i] > key
        _prev = a[i + 1]
        a[i + 1] = a[i]
        a[i] = _prev
        i -= 1
  a


# test.
a = makeUnsortedArray(30)
t = new Date()
console.log(insertionSort(a))
t1 = new Date()
console.log("time ", t1 - t)
