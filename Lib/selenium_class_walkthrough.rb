require 'selenium-webdriver'
# This class will automate data into a form as well as bring back values
class QatoolsForm
  # Page Object
  PRACTICE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  # Constants
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  SEX_FIELD_NAME = 'sex'
  YEARS_OF_EXPERIENCE_FIELD_NAME = 'exp'
  # ADD DATE
  PROFESSION_FIELD_NAME = 'profession'
  TOOL_FIELD_NAME = 'tool'

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

  def input_years_of_experience_field(number)
    @chrome_driver.find_elements(:name, YEARS_OF_EXPERIENCE_FIELD_NAME)[number].click
  end

  def input_profession_field(number0,number1)
    @chrome_driver.find_elements(:name, PROFESSION_FIELD_NAME)[number0].click
    @chrome_driver.find_elements(:name, PROFESSION_FIELD_NAME)[number1].click
  end

  def input_tool_field(number0, number1, number2)
    @chrome_driver.find_elements(:name, TOOL_FIELD_NAME)[number0].click
    @chrome_driver.find_elements(:name, TOOL_FIELD_NAME)[number1].click
    @chrome_driver.find_elements(:name, TOOL_FIELD_NAME)[number2].click
  end

  def input_firstname_field_value
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
  end

  def current_url
    @chrome_driver.current_url
  end

  def input_lastname_field_value
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)['value']
  end

  def input_sex_field_value
    @chrome_driver.find_element(:name, SEX_FIELD_NAME)['value']
  end

  def input_years_of_experience_field_value
    @chrome_driver.find_element(:name, YEARS_OF_EXPERIENCE_FIELD_NAME)['value']
  end

  def input_profession_field_value
    @chrome_driver.find_element(:name, PROFESSION_FIELD_NAME)['value']
  end
end
