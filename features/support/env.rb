require 'watir'
require 'page-object'
require "selenium-webdriver"
require 'page-object/page_factory'
require 'rspec'
require 'data_magic'
# require "minitest/autorun"

World(PageObject::PageFactory)

TEST_DATA_DIR = "./features/support/test_data"
DataMagic.yml_directory = './features/support/test_data/' #Tells data magic to look for data in

if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new
  headless.start

  at_exit do
    headless.destroy
  end
end