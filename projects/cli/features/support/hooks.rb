Before do |scenario|
  puts "Go! #{scenario.name}"
end

After do |scenario|
  puts "Stop!"
  puts "Fail" if scenario.failed?
end

