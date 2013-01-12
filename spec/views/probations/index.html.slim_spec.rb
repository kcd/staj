require 'spec_helper'

describe "probations/index.html.slim" do
  before(:each) do
    assign(:probations, [
      stub_model(Probation,
        :staj_yeri => "Staj Yeri",
        :tur => "Tur"
      ),
      stub_model(Probation,
        :staj_yeri => "Staj Yeri",
        :tur => "Tur"
      )
    ])
  end

  it "renders a list of probations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Staj Yeri".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tur".to_s, :count => 2
  end
end
