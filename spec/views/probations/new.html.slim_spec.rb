require 'spec_helper'

describe "probations/new.html.slim" do
  before(:each) do
    assign(:probation, stub_model(Probation,
      :staj_yeri => "MyString",
      :tur => "MyString"
    ).as_new_record)
  end

  it "renders new probation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => probations_path, :method => "post" do
      assert_select "input#probation_staj_yeri", :name => "probation[staj_yeri]"
      assert_select "input#probation_tur", :name => "probation[tur]"
    end
  end
end
