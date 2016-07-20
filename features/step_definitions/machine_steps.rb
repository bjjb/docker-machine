Given(/^a machine called "([^"]*)"$/) do |name|
  Docker::Machine.create(name) unless Docker::Machine.ls.include?(name)
end

Given(/^a script containing:$/) do |content|
  @script = content
end

When(/^I run the script$/) do
  @pipe = IO.popen(%w(ruby), 'r+') do |io|
    io.puts @script
    io.close_write
    @stdout = io.read
    io.close
  end
  @exitcode = $CHILD_STATUS
end

Then(/^the exit code is (\d+)$/) do |code|
  @exitcode == code.to_i
end
