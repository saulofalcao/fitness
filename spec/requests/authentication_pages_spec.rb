require 'spec_helper'

describe "Authentication" do
	subject {page}
	describe "signin page" do
		before {visit signin_path}
		it { should have_content('Acessar') }
		it { should have_title('Acessar') }

		describe "with invalid information" do
			before {click_button "Acessar"}
			it { should have_title("Acessar") }
			it { should have_selector("div.aler.alert-error") }
		  
		end
	end
end
