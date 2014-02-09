require 'spec_helper'

describe "aulas/edit" do
  before(:each) do
    @aula = assign(:aula, stub_model(Aula,
      :titulo => "MyString",
      :descricao => "MyText",
      :professor_id => 1
    ))
  end

  it "renders the edit aula form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aula_path(@aula), "post" do
      assert_select "input#aula_titulo[name=?]", "aula[titulo]"
      assert_select "textarea#aula_descricao[name=?]", "aula[descricao]"
      assert_select "input#aula_professor_id[name=?]", "aula[professor_id]"
    end
  end
end
