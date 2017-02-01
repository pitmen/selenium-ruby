class GoogleSearch

  #search = { name: 'q'}
 
  attr_reader :driver

  def initialize(driver)
    @driver = driver
    visit
    #verify_page
  end

  def visit
    driver.get ENV['base_url']
  end

  # método de procura
  def search_for(search_term)
    #driver.find_element().clear
    element = driver.find_element(:name, 'q')
    element.send_keys search_term
    element.send_keys(:enter)
  end

  #def submit_search
   # driver.find_element(:)

  def retorna_titulo
    sleep 5
    driver.title
  end
end