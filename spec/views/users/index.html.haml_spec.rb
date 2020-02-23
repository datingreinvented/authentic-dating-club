require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :provider => "Provider",
        :uid => "Uid",
        :role => 2,
        :email => "Email",
        :prefs => "MyText",
        :facebook_id => "Facebook",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone_no => "Phone No"
      ),
      User.create!(
        :name => "Name",
        :provider => "Provider",
        :uid => "Uid",
        :role => 2,
        :email => "Email",
        :prefs => "MyText",
        :facebook_id => "Facebook",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone_no => "Phone No"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Phone No".to_s, :count => 2
  end
end
