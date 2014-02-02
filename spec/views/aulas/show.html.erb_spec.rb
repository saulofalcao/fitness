require 'spec_helper'

describe "aulas/show" do
  before(:each) do
    @aula = assign(:aula, stub_model(Aula,
      :titulo => "Titulo",
      :descricao => "MyText",
      :professor_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
