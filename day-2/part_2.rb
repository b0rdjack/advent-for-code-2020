require "byebug"
File.open("input", "r") do |f|
  count = 0
  f.each_line do |line|
    arr = line.split(" ")
    pos = arr.first.split("-").map(&:to_i)
    count += 1 if (arr.last[pos.first - 1] == arr[1].chr) ^ (arr.last[pos.last - 1] == arr[1].chr)
  end
  puts count
end
