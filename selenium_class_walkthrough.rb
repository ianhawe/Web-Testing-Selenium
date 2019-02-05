require 'selenium-webdriver'

class QatoolsForm
  # Page Object
  PRACTICE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'

  def initialize
    # Link to driver through ruby chrome = interchangable for other browsers
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end
  # Passing values into the form
  def input_firstname_field(text)
    # This is to target a specific field on the webpage
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
  end
 
  def input_lastname_field(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
  end
  # 
   def input_firstname_field_value
  # Alternatively
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
    # @chrome_driver.find(:name, FIRST_NAME_FIELD_NAME).attribute('value')
  end
  def current_url
    @chrome_driver.current_url
  end
end

# test = QatoolsForm.new
# test.visit_practice_form
# test.input_firstname_field('Ian')
# test.input_lastname_field('Hawe')
# p test.input_firstname_field_value
# sleep 10