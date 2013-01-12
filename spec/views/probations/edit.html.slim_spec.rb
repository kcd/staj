require 'spec_helper'

describe "probations/edit.html.slim" do
  before(:each) do
    @probation = assign(:probation, stub_model(Probation,
      :staj_yeri => "MyString",
      :tur => "MyString"
    ))
  end

  it "renders the edit probation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => probations_path(@probation), :method => "post" do
      assert_select "input#probation_staj_yeri", :name => "probation[staj_yeri]"
      assert_select "input#probation_tur", :name => "probation[tur]"
    end
  end
end
