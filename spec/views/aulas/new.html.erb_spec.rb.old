require 'spec_helper'

describe "aulas/new" do
  before(:each) do
    assign(:aula, stub_model(Aula,
      :titulo => "MyString",
      :descricao => "MyText",
      :professor_id => 1
    ).as_new_record)
  end

  it "renders new aula form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aulas_path, "post" do
      assert_select "input#aula_titulo[name=?]", "aula[titulo]"
      assert_select "textarea#aula_descricao[name=?]", "aula[descricao]"
      assert_select "input#aula_professor_id[name=?]", "aula[professor_id]"
    end
  end
end
