class ConfirmationPage

  def initialize(driver)
    @driver = driver
  end

  def tax_state(tax)
    subtotal= @driver.find_element(:id=>"subtotal").text.sub("$","").to_f
    total = @driver.find_element(:id=>"total").text.sub("$","").to_f
    taxes = @driver.find_element(:id=>"taxes").text.sub("$","").to_f

    (subtotal * (tax.to_f/100)).round(2).should == taxes
    (subtotal + taxes).should == total
  end
end