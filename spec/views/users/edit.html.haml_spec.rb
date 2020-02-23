require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :provider => "MyString",
      :uid => "MyString",
      :role => 1,
      :email => "MyString",
      :prefs => "MyText",
      :facebook_id => "MyString",
      :street_address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :phone_no => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[provider]"

      assert_select "input[name=?]", "user[uid]"

      assert_select "input[name=?]", "user[role]"

      assert_select "input[name=?]", "user[email]"

      assert_select "textarea[name=?]", "user[prefs]"

      assert_select "input[name=?]", "user[facebook_id]"

      assert_select "input[name=?]", "user[street_address]"

      assert_select "input[name=?]", "user[city]"

      assert_select "input[name=?]", "user[state]"

      assert_select "input[name=?]", "user[zip]"

      assert_select "input[name=?]", "user[phone_no]"
    end
  end
end
