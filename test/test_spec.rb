#require 'rspec'
require 'selenium-webdriver'

#puts 'hello world'
# Definindo o driver que será usado (chrome)
driver = Selenium::WebDriver.for :chrome

# Acessa a url desejada
driver.navigate.to "http://google.com"

# encontra o elemento pelo 'name'
element = driver.find_element(:name, 'q')

# Escreve no elemento
element.send_keys "Hello WebDriver!"

# Envia o formulário (funciona parecido com o click)
element.submit

# impprime o título da página
puts driver.title

# Valida se o título está correto
expect(driver.title()).to eq("Googli")

# Imprime mensagem antes de fechar
puts 'fim do teste, browser será encerrado!'

# fecha o browser
driver.quit