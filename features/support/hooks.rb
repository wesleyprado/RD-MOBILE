# frozen_string_literal: true

Before do
    $driver.start_driver
    sleep(5)
    @register ||= RegisterPage.new
    @login ||= LoginPage.new
    @browserstack_api ||= BrowserstackAPI.new
end

After do |scenario|
#   bs = BrowserstackAPI.new
#   if ENV['PLATFORM'].include? '_farm'
#     bs.update_session_name(
#       $driver.session_id,
#       scenario.name
#     )
#     bs.update_session_status(
#       $driver.session_id,
#       scenario.status,
#       scenario.exception
#     )
#   end
   $driver.driver_quit
end

# at_exit do
#   @bs_local&.stop
# end
