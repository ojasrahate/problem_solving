# {1,2,3,4,5,6,21}
# {21,1,2,3,4,5,6}
# {1,2,3,4,5,1,6,8}

flag = 0
x = [1,2,3,4,5,6,21]
y = x.length() -1
sum_of_start = x[0]
sum_of_end = x[y]
j = 1
y.times do |i|
  sum_of_start = sum_of_start + x[i+1] if sum_of_end > sum_of_start
  if sum_of_start >  sum_of_end
    sum_of_end = sum_of_end + x[y-i+1]
    j = j+1
  end
  puts "sum_of_start:#{sum_of_start}"
  puts "sum_of_end:#{sum_of_end}"
  if (sum_of_start == sum_of_end) && ((i+j)==y)
    puts "Index is: #{i}"
    flag = 1
  end
end

puts "The Problem statement not possible in this combination" if flag == 0
