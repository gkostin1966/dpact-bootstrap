After do |scenario|
# save_and_open_page if scenario.failed?
 puts save_page("./save_page/#{scenario.name}.html") if scenario.failed?
end

