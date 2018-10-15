describe 'testing the toosqa page' do

  before(:all) do
    @driver = SeleniumQAToolsForm.new
    @driver.visit_practice_form
  end

  context 'positive paths for the personal information form and register' do


    it 'should accept a first name' do
      expect(@driver.get_first_name_field_value('manav')).to eql(true)
    end
    
    it 'should accept a last name' do
      expect(@driver.get_last_name_field_value('pandey')).to eql(true)
    end

    it 'should check if gender is selected' do
      expect(@driver.click_gender).to eq(true)
    end

    it 'should check if experience is selected' do
      expect(@driver.click_experience).to eq(true)
    end
      it 'should check if profession is selected' do
        expect(@driver.click_profession_field).to eq(true)
      
    end
    it 'should check if date  is given' do
      expect(@driver.get_date_field('date')).to eq(true)
    
  end

  it 'should check for continents' do

    expect(@driver.select_continents_field).to eq(true)

  end
end
end