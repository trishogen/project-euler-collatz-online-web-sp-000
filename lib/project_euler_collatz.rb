def even_next(n)
  return n/2
end

def odd_next(n)
  return 3 * n + 1
end

def next_value(n)
  if n.even?
    return even_next(n)
  else
    return odd_next(n)
  end
end

def collatz(n)
  sequence = [n]

  while n > 1 do
    n = next_value(n)
    sequence.push(n)
  end

  return sequence
end

def longest_collatz
  curr_num =  999999
  longest_sequence = 1
  longest_n = 1

  while curr_num > 2 do
    curr_collatz_length = collatz(curr_num).length()

    if curr_collatz_length > longest_sequence
      longest_sequence = curr_collatz_length
      longest_n = curr_num
    end

    curr_num = curr_num - 1
  end

  return longest_n
end
