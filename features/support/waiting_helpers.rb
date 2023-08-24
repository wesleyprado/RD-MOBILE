# frozen_string_literal: true

# Waiting methods helpers
module WaitingHelpers
		def self.wait_for_element_be_enabled(element)
			wait = Selenium::WebDriver::Wait.new timeout: 150
			wait.until { find_element(element).enabled?.eql? true }
		end

		def self.wait_for_element_be_displayed(element)
			wait = Selenium::WebDriver::Wait.new timeout: 250
			wait.until { find_element(element).displayed?.eql? true }
		end
end

World(WaitingHelpers)
