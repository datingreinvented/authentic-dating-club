require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Provider/)
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Phone No/)
  end
end
