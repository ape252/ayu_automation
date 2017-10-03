class Community
  include PageObject
  page_url Common.get_url("homepage")

    text_field :email_id, :id => "inputEmail"
    text_field :pass_id, :id => "inputPassword"
    button :sub_type, :xpath => "//div[2]/form/div[3]/button"
  def com
    @browser.span(:xpath, "//div[2]/div[1]/ul/li[2]/a/span").click
  end
  # l "//div/ul/li[1]/div/div[3]/div[1]/a"
  def rsvp
  	@browser.a(:xpath, "//div[1]/div/ul/li[1]/div/div[3]/div[1]/a").click
  	sleep 4
  	
  	@browser.a(:xpath, "//div[1]/div/ul/li[1]/div/div[3]/div[2]/a").click
  	sleep 2
  	@browser.span(:xpath, "//div[1]/div/nav/div[2]/div/ul/li[4]/a/span").click
  	sleep 1
  	@browser.a(:xpath, "//div[1]/div/nav/div[2]/div/ul/li[4]/div/a[4]").click
  end


  
  def reserve
  	@browser.select(:xpath, "//div[2]/div/form/div[1]/div/select").click
  	@browser.option(:text, "Elevator").click
  
    # @browser.option(:xpath, "//div/form/div[1]/div/select/option[3]").click
    @browser.a(:xpath, "//div[2]/div/form/div[2]/div/select").click
    @browser.option(:xpath, "//div[2]/div/form/div[2]/div/select/option[2]").click
    @browser.select(:id, "selectFromTime").click
    @browser.list(:text, "08:30 AM").click
    @browser.list(:id, "selectToTime").click
    @browser.list(:xpath, "//div[3]/div[2]/select/option[11]").click
    @browser.input(:xpath, "//div[3]/div[3]/datepicker/input").click
    @browser.a(:xpath, "//div[3]/div[3]/datepicker/div/div[4]/a[35]").click
    @browser.button(:xpath, "//div[5]/button").click
  end
end 


    