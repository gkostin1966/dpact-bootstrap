Given('the input {string}') do |string|
  write_file 'input.txt', string
end

When('the calculator is run') do
  run 'calculator input.txt'
end

When('the calculator is run with no input') do
  run 'calculator'
end

When('I enter the calculation {string}') do |string|
  type string
end


Then('the {channel} should be {string}') do |channel, string|
  expect(last_command_stopped).to have_output an_output_string_including(string)end

