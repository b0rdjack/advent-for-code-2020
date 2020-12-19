File.open("input", "r") do |f|
  a = []
  f.each_line do |line|
    a.push line.to_s.strip.split("")
  end
  trees_count = 0
  y = 3
  # Iterate through lines
  a.each_with_index do |x, xi|
    # Start at index 1
    next if xi == 0
    # Duplicate input if limit is reached
    a = a.zip(a).map(&:flatten) if a[xi][y] == nil
    # Add to the count if it's a tree
    trees_count += 1 if a[xi][y] == "#"
    # Move 3 steps
    y += 3
  end
  puts "Trees: #{trees_count}"
end
