require 'spec_helper'

describe "User pages" do

	subject { page }

  describe "signup page" do
   before { visit signup_path }

   it { should have_content('Cadastre-se') }
   it { should have_title(full_title('Cadastre-se')) }

   # testa clicar no submit sem nenhum input
   let(:submit) { "Cadastrar" } 
   describe "com informação invalida" do
     it "não deve criar um usuário" do
       expect(click_button submit).to  not_to change(User, :count)
     end
   end

   describe "Com informação valida" do
    before do
      fill_in "Nome",  with: "Example User"
      fill_in "E-mail",  with: "user@example.com"
      fill_in "Senha",  with: "foobar"
      fill_in "Confirmação da Senha",  with: "foobar"
    end
    it "deve criar um usuario" do
      expect(click_button submit).to change(User, :count).by(1)
    end
  end

end
describe "profile page" do
		# Replace with code to make a user variable
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.nome) }
    it { should have_title(user.nome) }
  end

end



