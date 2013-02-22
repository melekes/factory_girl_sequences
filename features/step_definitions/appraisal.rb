When /^I run `([^"]+)` with a clean environment$/ do |command|
  step %{I successfully run `ruby -e 'system({"BUNDLE_GEMFILE" => nil}, "#{command}")'`}
end
