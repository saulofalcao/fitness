require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit cadastrar_path }

    it { should have_content('Cadastre-se') }
    it { should have_title(full_title('Cadastre-se')) }
  end
end

describe "profile page" do
  # Replace with code to make a user variable
  before { visit user_path(user) }

  it { should have_content(user.name) }
  it { should have_title(user.name) }
end

