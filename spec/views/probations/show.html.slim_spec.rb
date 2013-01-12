require 'spec_helper'

describe "probations/show.html.slim" do
  before(:each) do
    @probation = assign(:probation, stub_model(Probation,
      :staj_yeri => "Staj Yeri",
      :tur => "Tur"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Staj Yeri/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tur/)
  end
end
