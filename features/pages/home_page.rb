class HomePage

  def initialize(page_driver)
    @driver = page_driver
  end

  def open_jungle_socks
    @driver.get("https://jungle-socks.herokuapp.com/")
  end

  def enter_quantities(zebra_qty,lion_qty,elephant_qty,giraffe_qty)
    @driver.find_element(:id => "line_item_quantity_zebra").send_keys(zebra_qty)
    @driver.find_element(:id => "line_item_quantity_lion").send_keys(lion_qty)
    @driver.find_element(:id => "line_item_quantity_elephant").send_keys(elephant_qty)
    @driver.find_element(:id => "line_item_quantity_giraffe").send_keys(giraffe_qty)

  end

  def select_state(mystate)
  #  @driver.find_element(:name =>'state').send_keys(mystate)
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name =>'state')).select_by(:text, mystate)
  end

  def submit
    @driver.find_element(:name => 'commit').click
  end

end