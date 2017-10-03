  class LoginPage
  include PageObject 
   page_url Common.get_url("homepage")

    text_field :email_id, :id => "inputEmail"
    text_field :pass_id, :id => "inputPassword"
    button :sub_type, :xpath => "//div[2]/form/div[3]/button"

    def invalid_email
      @browser.input(:id, "inputEmail").send_keys "aveer@qwinix.io"
      @browser.input(:id, "inputPassword").send_keys "qwinix34"
      @browser.button(:xpath, "//div[2]/form/div[3]/button").click 
      sleep 2   
      # az = @browser.text(:xpath, "//div[2]/div/div/div/div/div[1]").text
      # if az.include? "Invalid Email or Password."
      #   sleep 2
      #   p az
      # else
      #   raise "not successful"
      # end
    end
  end