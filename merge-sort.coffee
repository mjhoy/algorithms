# 2.3.1 Merge sort

  
# auxiliary function merge
#
# `a` is an array, and `p`, `q`, and `r` are indices
# such that `p <= q < r`.
#
# imagine two decks of cards (a[p..q] and a[q..r]) that
# have been sorted, smallest to largest. with the two
# top cards showing on each deck, we simply pick the
# smallest and put it in an output pile. Keep doing
# this until the original two piles are empty.
#
# time of On
merge = (a, p, q, r) ->

  left = []
  right = []

  n1 = q - p + 1
  n2 = r - q

  # Create the left and right "piles".
  for i in [0...n1]
    left[i] = a[p + i]
  for j in [0...n2]
    right[j] = a[q + j + 1]

  # Put infinity at the end of each pile.
  left[n1 + 1] = Infinity
  right[n2 + 1] = Infinity

  i = j = 0

  for k in [p..r]
    if left[i] <= right[j]
      a[k] = left[i]
      i += 1
    else
      a[k] = right[j]
      j += 1

  # console.log(a, left, right)

merge([1,2,3,4,2,3,4], 1, 3, 6)
