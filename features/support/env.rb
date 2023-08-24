# frozen_string_literal: true

require 'rspec'
require 'selenium-cucumber'
require 'appium_lib'
require 'pry'
require 'selenium-webdriver'
require 'httparty'
require 'browserstack/local'

ANDROID_APP_PATH="C:\\Users\\T-Gamer\\Documents\\GitHub\\RD-MOBILE\\app\\android\\app.apk"
IOS_APP_PATH="<caminho do arquivo .app>"
BROWSERSTACK_USERNAME=""
BROWSERSTACK_ACCESS_KEY=""
ANDROID_APP_ID_HASH="<hash do app ANDROID no BrowserStack>"
IOS_APP_ID_HASH="<hash do app iOS no BrowserStack>"
BUILD="Android v3.8.10_7"




if ENV['PLATFORM'] == 'android_local'
  caps = YAML.load_file('features/support/capabilities/android_local.yml')
  caps['caps'].merge!('app' => ANDROID_APP_PATH)
  Appium::Driver.new(caps, true)
  Appium.promote_appium_methods Object
elsif ENV['PLATFORM'] == 'ios_local'
  caps = YAML.load_file('features/support/capabilities/ios_local.yml')
  caps['caps'].merge!('app' => IOS_APP_PATH)
  Appium::Driver.new(caps, true)
  Appium.promote_appium_methods Object
elsif ENV['PLATFORM'] == 'android_farm'
    caps = YAML.load_file('features/support/capabilities/android_farm.yml')
    caps.merge!('app' => ANDROID_APP_ID_HASH)
  else
    caps = YAML.load_file('features/support/capabilities/ios_farm.yml')
    caps.merge!('app' => IOS_APP_ID_HASH)
  end

  # caps['build'] = BUILD
  # @bs_local = nil
  
  # if ENV['BROWSERSTACK_LOCAL']
  #   caps.merge!('browserstack.local' => true)
  #   bs_local_args =
  #     {
  #       'key' => BROWSERSTACK_ACCESS_KEY
  #     }
  #   if ENV['PROXY']
  #     bs_local_args.merge!(
  #       'proxyHost' => '',
  #       'proxyPort' => '80'
  #     )
  #   end
  #   @bs_local = BrowserStack::Local.new
  #   @bs_local.start(bs_local_args)
  # end

  # desired_caps = {
  #   caps: caps,
  #   appium_lib: {
  #     server_url:
  #       "http://#{BROWSERSTACK_USERNAME}:"\
  #       "#{BROWSERSTACK_ACCESS_KEY}@"\
  #       'hub-cloud.browserstack.com/wd/hub'
  #   }
  # }

  # begin
  #   Appium::Driver.new(desired_caps, true)
  #   Appium.promote_appium_methods Object
  # rescue StandardError => e
  #   puts e.message
  #   Process.exit(0)
  # end

$platform = ENV['PLATFORM'].split('_')[0].to_sym

DATA = YAML.load_file(File.dirname(__FILE__) + "/data/data.yml")