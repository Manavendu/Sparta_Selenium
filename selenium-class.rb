require "selenium-webdriver"

class SeleniumQAToolsForm
    PRACTICE_FORM_URL = "http://toolsqa.com/automation-practice-form"

    FIRST_NAME_FIELD_NAME ="firstname"
    LAST_NAME_FIELD_NAME = "lastname"
    DATE_FIELD = "datepicker"
    CONTINENT= "continents"



    def initialize # create instance variable

        @chrome_driver = Selenium::WebDriver.for(:chrome)
        end

    def visit_practice_form

        @chrome_driver.get(PRACTICE_FORM_URL)
    end

    def find_first_name_field
        @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)
    end

    def find_last_name_field
        @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)
    end

    def find_continents_field
        @chrome_driver.find_element(:name, CONTINENT)
    end

    def select_continents_field

        find_continents_field.select_by(:text, "Asia")

        if find_continents_field.selected?
            return true
        end

        false
    end


    def fill_in_first_name_field(first_name)
        find_first_name_field.send_keys(first_name)


    end

    def find_gender
        @chrome_driver.find_element(:xpath, "//input[@name= 'sex' and @value ='Male']")
    end

    def click_gender
        find_gender.click()
        if find_gender.selected?
            return true
        end
        return false
    end



    def find_experience
        @chrome_driver.find_element(:xpath, "//input[@name= 'exp' and @value ='1']")
    end

    def click_experience
        find_experience.click()
        if find_experience.selected?
            return true
        end
        return false
    end

    def find_profession 
        @chrome_driver.find_element(:xpath, "//input[@name= 'profession' and @value ='Manual Tester']")
    end
    def click_profession_field
        find_profession.click()

        if find_profession.selected?
            return true
        end
        return false
    end


    def find_date_field
        @chrome_driver.find_element(:id, DATE_FIELD)
    end

    def fill_date_field(date)
        
        find_date_field.send_keys(date)

    end

    def get_date_field(date)

        fill_date_field(date)

        if find_date_field["value"] == date
            return true
        end
            return false
    end

    def fill_in_last_name_field(last_name)
        find_last_name_field.send_keys(last_name)
    end

    
    def get_first_name_field_value(first_name)
        fill_in_first_name_field(first_name)
        if find_first_name_field["value"] == first_name
            return true
        end
            return false
    end
    

    def get_last_name_field_value(last_name)
        
        fill_in_last_name_field(last_name)
        if find_last_name_field["value"] == last_name
            return true
        end
            return false

    end
    
end
