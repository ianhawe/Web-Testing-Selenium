describe 'Testing the demoqa automation form' do
  before(:all) do
    @driver = QatoolsForm.new
    @driver.visit_practice_form
    @url = 'https://www.toolsqa.com/automation-practice-form'
    @name = Faker::HarryPotter.character
  end
  context 'testing the positive paths for the form' do 
    # First check if the registration can land on the page
    it 'should land on the registration demo form page' do
      expect(@driver.current_url).to eq @url
    end
    it 'should accept a first name' do
      @driver.input_firstname_field('Ian')
      expect(@driver.input_firstname_field_value).to eq 'Ian'
    end
  end
end
