n,q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

queries = Array.new(q) { gets.split }

ans = (0...n).sum { |i| [a[i], b[i]].min }

queries.each do |ary|
  num = ary[1].to_i - 1
  old_min = [a[num], b[num]].min

  if ary[0] == "A"
    a[num] = ary[2].to_i
  else
    b[num] = ary[2].to_i
  end

  new_min = [a[num], b[num]].min
  ans += new_min - old_min
  p ans
end
