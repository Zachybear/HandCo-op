require 'rails_helper'

RSpec.describe "ratings/edit", :type => :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      :stars => "9.99"
    ))
  end

  it "renders the edit rating form" do
    render

    assert_select "form[action=?][method=?]", rating_path(@rating), "post" do

      assert_select "input#rating_stars[name=?]", "rating[stars]"
    end
  end
end
