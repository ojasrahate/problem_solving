#reverse the string but preserve the order of space. ex: "I am boy" -> "y ob mai"

str = "I am boy"
str=str.downcase
z = str.split
len_arr = Array.new()

z.each do |y|
  len_arr.append(y.length)
end

z=z.join.reverse
z=z.chars()

y=0
for i in len_arr
  y=y+i
  puts "Y=#{y}"
  z.insert(y, " ")
  y = y+1
end

z=z.join
print z
