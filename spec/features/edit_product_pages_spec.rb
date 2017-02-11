require 'rails_helper'

describe "the edit a product process" do
  it "edit a new product" do
    visit products_info_path
    click_link 'Products'
    click_link 'Add another product'
    fill_in 'Name', :with => 'Gummy Yummy'
    fill_in 'Cost', :with => '27.26'
    fill_in 'product_coo', :with => 'Japan'
    click_on 'Create Product'
    click_on 'Gummy Yummy'
    click_on 'Edit'
    fill_in 'Name', :with => 'New Name'
    click_on 'Update Product'
    expect(page).to have_content 'New Name'
  end
end
