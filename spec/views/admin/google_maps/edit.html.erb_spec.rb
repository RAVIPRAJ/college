require 'rails_helper'

RSpec.describe "admin/google_maps/edit", type: :view do
  before(:each) do
    @admin_google_map = assign(:admin_google_map, Admin::GoogleMap.create!(
      :name => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :google_api_key => "MyString"
    ))
  end

  it "renders the edit admin_google_map form" do
    render

    assert_select "form[action=?][method=?]", admin_google_map_path(@admin_google_map), "post" do

      assert_select "input#admin_google_map_name[name=?]", "admin_google_map[name]"

      assert_select "input#admin_google_map_latitude[name=?]", "admin_google_map[latitude]"

      assert_select "input#admin_google_map_longitude[name=?]", "admin_google_map[longitude]"

      assert_select "input#admin_google_map_google_api_key[name=?]", "admin_google_map[google_api_key]"
    end
  end
end
