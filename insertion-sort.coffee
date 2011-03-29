# 2.1 insertion sort

# helper function: generate n-length array with random numbers 0-9
makeUnsortedArray = (n) ->
  while n -= 1
    Math.floor(Math.random() * 10)

makeSortedArray = (n) ->
  j = n
  while j -= 1
    10 - Math.ceil((j / n) * 10)

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
n = 5000
a = makeUnsortedArray(n)
s = makeSortedArray(n)
t = new Date()
insertionSort(a)
t1 = new Date()
insertionSort(s)
t2 = new Date()
console.log("unsorted time ", t1 - t)
console.log("sorted time ", t2 - t1)
