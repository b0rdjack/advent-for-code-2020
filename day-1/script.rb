File.open("input", "r") do |f|
  puts f.each_line
         .map(&:to_i)
         .combination(2)
         .find { |a| a.sum == 2020 }
         .reduce(&:*)
end
