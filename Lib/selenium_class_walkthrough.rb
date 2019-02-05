require 'selenium-webdriver'

class QatoolsForm
  # Page Object
  PRACTICE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  # Constants
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  SEX_FIELD_NAME = 'sex'
  YEARS_OF_EXPERIENCE = 'exp'
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

  def input_sex_field(number)
    @chrome_driver.find_elements(:name, SEX_FIELD_NAME)[number].click
  end

  def input_years_of_experience(number)
    @chrome_driver.find_elements(:name, YEARS_OF_EXPERIENCE)[number].click
  end

  def input_firstname_field_value
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
  end

  def current_url
    @chrome_driver.current_url
  end
end
test = QatoolsForm.new
test.visit_practice_form
test.input_firstname_field('Ian')
test.input_lastname_field('Hawe')
test.input_sex_field(0)
test.input_years_of_experience(0)
p test.input_firstname_field_value
sleep 10