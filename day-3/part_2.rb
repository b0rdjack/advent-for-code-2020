# Right 1, down 2
File.open("input", "r") do |f|
  a = []
  f.each_line do |line|
    a.push line.to_s.strip.split("")
  end
  trees_count = 0
  y = 1
  (0...a.length).step(2).each do |index|
    next if index == 0
    # Duplicate input if limit is reached
    a = a.zip(a).map(&:flatten) if a[index][y] == nil
    # Add to the count if it's a tree
    trees_count += 1 if a[index][y] == "#"
    # Move 3 steps
    y += 1
  end
  puts "Trees: #{trees_count}"
end
