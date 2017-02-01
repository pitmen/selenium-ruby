require 'selenium-webdriver'
require 'C:/automation_ruby/spec/po/GoogleSearch.rb'
#require 'rails_helper'
#require "selenium-webdriver"
class Teste
	describe 'teste' do 

		before(:all) do
    		puts 'hello world'
    		Selenium::WebDriver::Chrome.driver_path="C:/automacao/chromedriver.exe"
			@driver = Selenium::WebDriver.for :chrome#, driver_path="C:/automacao/chromedriver.exe"
	  		ENV['base_url'] = 'http://www.google.com'
  		end

  		after(:all) do
  			puts 'fim'
    		#raise StandardError.new("Boom!")
  		end
	
		it 'validar uma pesquisa no Google' do 
			google = GoogleSearch.new(@driver)
	  		google.search_for'teste'

	  		expect(google.retorna_titulo). to eq 'teste - Pesquisa Google'
	  		sleep 5
			
		end	

		
	end
end

