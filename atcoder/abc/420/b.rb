n,m = gets.chomp.split(" ").map(&:to_i)
ary = []
n.times { ary << gets.chomp.split("").map(&:to_i) }
hash = (0...n).each_with_object({}) { |i, h| h[i] = 0 }

(0...m).to_a.each do |i|
  x = 0 # zero - 0
  y = 0 # one - 1
  x_people = []
  y_people = []

  (0...n).to_a.each do |j|
    #puts "ary[#{j}][#{i}]=#{ary[j][i]}"
    if ary[j][i] == 0
      x+=1
      x_people << j
    else
      y+=1
      y_people << j
    end
  end

  if x == 0 || y == 0
    hash.transform_values! { |v| v + 1 }
  elsif y > x
    x_people.each { hash[_1] += 1 }
  else
    y_people.each { hash[_1] += 1 }
  end
  #puts "x=#{x}"
  #puts "y=#{y}"
  #p "x_people=#{x_people}"
  #p "y_people=#{y_people}"
  #p hash
  #p '====='
end
max = hash.values.max
ary2 = hash.filter_map { |k, v| k if v == max }.sort
#puts hash
#puts max
puts ary2.map { |n| n+1 }.join(' ')
