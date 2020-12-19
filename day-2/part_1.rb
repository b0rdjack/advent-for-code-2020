File.open("input", "r") do |f|
  count = 0
  f.each_line do |line|
    arr = line.split(" ")
    min_max = arr.first.split("-").map(&:to_i)
    count += 1 if arr.last.count(arr[1].chr).between?(min_max.first, min_max.last)
  end
  puts count
end
