require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_info_path
    click_link 'Products'
    click_link 'Add another product'
    fill_in 'Name', :with => 'Gummy Yummy'
    fill_in 'Cost', :with => '27.26'
    fill_in 'product_coo', :with => 'Japan'
    click_on 'Create Product'
    expect(page).to have_content 'Gummy Yummy'
  end
end
