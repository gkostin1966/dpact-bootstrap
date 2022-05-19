Before do |scenario|
  puts "Before #{scenario.name}"
  TransactionQueue.clear
end

After do |scenario|
  puts "After #{scenario.name}"
  puts "Fail" if scenario.failed?
end

